library sonr_plugin;

import 'dart:async';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';
import 'src/models.dart';
import 'src/proto/proto.dart';
export 'src/models.dart';
export 'package:path/path.dart';
export 'package:path_provider/path_provider.dart';
export 'package:open_file/open_file.dart';
export 'package:get/get.dart';
export 'src/proto/proto.dart';
export 'src/extensions/extensions.dart';

/// [RPC_HOST] is the address for Sonr RPC Node
const RPC_HOST = 'localhost';

/// [RPC_SERVER_PORT] is the listening port for the Sonr RPC Node
const RPC_SERVER_PORT = 52006;

/// [_actionChannel] is the Method channel to interact with Java/Swift proxy
const _actionChannel = MethodChannel('io.sonr.plugin/action');

/// [SonrService] manages entire Sonr Client/Server node with GetX interface
///
/// [Profile] and [Location] can be provided from `init()` and `start()` methods.
/// Helper method: `pick()` displays Native File Picker dialog.
class SonrService extends GetxService {
  /// Quick Static Accessor for SonrService
  static SonrService get to => Get.find<SonrService>();

  /// Quick Static Accessor to verify service registered
  static bool get isRegistered => Get.isRegistered<SonrService>();

  /// Recent Profiles is list of peers User interacts with
  final recentProfiles = RxList<ProfileList>();

  /// Status is the status of the Sonr RPC Server
  final status = Rx<Status>(Status.IDLE);

  // GRPC Streams
  final _decisionEvents = StreamController<DecisionEvent>();
  final _refreshEvents = StreamController<RefreshEvent>();
  // final _mailboxEvents = StreamController<MailboxEvent>();
  final _inviteEvents = StreamController<InviteEvent>();
  final _progressEvents = StreamController<ProgressEvent>();
  final _completeEvents = StreamController<CompleteEvent>();

  /// Enviornment Variables reference
  Map<String, String>? _enviornmentVariables;

  // GRPC Service Client
  late ClientServiceClient _client;

  // GRPC Event Channel
  late ClientChannel _channel;

  /// ### Checks permissions and Returns GetxService
  /// Optional Params for: `Profile`, `Location`, and `Map<String, String>`
  Future<SonrService> init({Map<String, String>? vars}) async {
    // Set Enviornment Variables from OS
    _enviornmentVariables = vars ?? <String, String>{};
    return this;
  }

  /// ### Connects to New Sonr GRPC Server on Swift, or Java
  /// Optional Params for: `Profile` and `Location`
  Future<void> start({Profile? profile, required Location location}) async {
    // Set Options
    final deviceOpts = await Config.getDeviceOpts();
    final connection = await Config.getConnection();
    final hostOpts = await Config.getHostOptions();
    final request = InitializeRequest(
      connection: connection,
      location: location,
      hostOptions: hostOpts,
      profile: profile,
      deviceOptions: deviceOpts,
      variables: _enviornmentVariables,
      environment: BuildModeUtil.toEnvironment(),
    );

    // Delete Enviornment Variables Ref
    _enviornmentVariables = null;

    // Await Response
    final respBuf = await _actionChannel.invokeMethod('start', request.writeToBuffer());
    if (respBuf is Uint8List) {
      // Parse Response
      final resp = InitializeResponse.fromBuffer(respBuf.toList());
      recentProfiles.addAll(resp.recents.values.toList());
    }

    // Create a client channel and client
    _channel = ClientChannel(RPC_HOST,
        port: RPC_SERVER_PORT,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ));

    // Create a client stub
    _client = ClientServiceClient(_channel);

    // Handle Lobby Refresh
    _client.onLobbyRefresh(Empty()).listen(
          (value) => _refreshEvents.add(value),
          onError: (err) => print("[RPC Client] ERROR: Listening to onLobbyRefresh \n" + err.toString()),
          cancelOnError: true,
        );

    // // Handle Mail Messages
    // _client.onMailboxMessage(Empty()).listen(
    //   (value) {
    //     _mailboxEvents.add(value);
    //   },
    //   onError: (err) => print("[RPC Client] ERROR: Listening to onMailboxMessage \n" + err.toString()),
    //   cancelOnError: true,
    // );

    // Create Decision Stream
    _client.onTransferAccepted(Empty()).listen(
      (value) {
        _decisionEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransferAccepted \n" + err.toString()),
      cancelOnError: true,
    );

    // Create Decision Stream
    _client.onTransferDeclined(Empty()).listen(
      (value) {
        _decisionEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransferDeclined \n" + err.toString()),
      cancelOnError: true,
    );

    // Create Invite Stream
    _client.onTransferInvite(Empty()).listen(
      (value) {
        _inviteEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransferInvite \n" + err.toString()),
      cancelOnError: true,
    );

    // Create Progress Stream
    _client.onTransferProgress(Empty()).listen(
      (value) {
        _progressEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransferProgress \n" + err.toString()),
      cancelOnError: true,
    );

    // Create Complete Stream
    _client.onTransferComplete(Empty()).listen(
      (value) {
        _completeEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransferComplete \n" + err.toString()),
      cancelOnError: true,
    );
    status(Status.ACTIVE);
  }

  /// #### Stops Sonr GRPC Server on Swift, or Java
  Future<void> stop() async {
    await _completeEvents.close();
    await _decisionEvents.close();
    await _inviteEvents.close();
    await _progressEvents.close();
    await _refreshEvents.close();
    //await _mailboxEvents.close();
    await _channel.shutdown();
    await _actionChannel.invokeMethod('stop');
    status(Status.STOPPED);
  }

  /// #### Pauses Sonr GRPC Server on Swift, or Java
  Future<void> pause() async {
    await _actionChannel.invokeMethod('pause');
    status(Status.PAUSED);
  }

  /// #### Resumes Sonr GRPC Server on Swift, or Java
  Future<void> resume() async {
    await _actionChannel.invokeMethod('resume');
    status(Status.ACTIVE);
  }

  /// [pick()] Presents a native dialog for selecting files
  /// Optionally can be supplied after pick
  Future<List<String>> pick({bool supplyAfterPick = false, FileType type = FileType.any}) async {
    // Initialize
    List<String> adjPaths = [];
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true, type: type);

    // Check if the result is valid
    if (result != null) {
      // Add Non-Null Paths to List
      for (String? path in result.paths) {
        if (path != null) {
          adjPaths.add(path);
        }
      }
    }

    // Check if we need to supply the result
    if (supplyAfterPick && adjPaths.length > 0) {
      await supply(adjPaths);
    }
    return adjPaths;
  }

  /// [supply(List<String>)] Supply a list of paths to the node.
  /// Will be queued for a share.
  Future<SupplyResponse> supply(List<String> paths, {Peer? peer}) async {
    final supplyRequest = SupplyRequest(paths: paths, peer: peer);
    final resp = await _client.supply(supplyRequest);
    return resp;
  }

  /// [edit(Profile)] Edits the profile of the node.
  Future<EditResponse> edit(Profile profile) async {
    // Handle Profile Edits
    if (!profile.hasLastModified()) {
      profile.lastModified = fixnum.Int64(DateTime.now().millisecondsSinceEpoch * 1000);
    }

    // Send Request
    final editRequest = EditRequest(profile: profile);
    final resp = await _client.edit(editRequest);
    return resp;
  }

  /// [fetch(FetchRequest_Key)] Retreives properties from in memory store
  Future<FetchResponse> fetch({required FetchRequest_Key key}) async {
    final fetchRequest = FetchRequest(key: key);
    final resp = await _client.fetch(fetchRequest);

    // Check recents length and update
    if (resp.recents.length > 0) {
      // Initialize and Sort
      final respLists = resp.recents.values.toList();
      respLists.sort((a, b) => a.lastModified.compareTo(b.lastModified));

      // Add all profiles to list
      recentProfiles(respLists);
      recentProfiles.refresh();
    }
    return resp;
  }

  /// [share(Peer)] Shares queued transfer with peer.
  Future<ShareResponse> share(Peer peer) async {
    final shareRequest = ShareRequest(peer: peer);
    final resp = await _client.share(shareRequest);
    return resp;
  }

  /// [respond(bool)] Responds to an InviteEvent.
  Future<RespondResponse> respond(bool decision, Peer to) async {
    final respondRequest = RespondRequest(decision: decision, peer: to);
    final resp = await _client.respond(respondRequest);
    return resp;
  }

  /// [find(String)] Searches for a Peer with given SName.
  Future<SearchResponse> search(String sName) async {
    // Clean SName for Query
    sName = sName.removeAllWhitespace;
    sName = sName.toLowerCase();

    // Create Request
    final searchRequest = SearchRequest(sName: sName);
    final resp = await _client.search(searchRequest);
    return resp;
  }

  /// [stat()] Returns the status of the node.
  Future<StatResponse> stat() async {
    final statRequest = StatRequest();
    final resp = await _client.stat(statRequest);
    return resp;
  }

  /// `StreamSubscription<DecisionEvent>` - Add Stream Listener for Decision Events
  StreamSubscription<DecisionEvent> onDecision(void Function(DecisionEvent)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return _decisionEvents.stream.listen(onData, onError: onError, onDone: onDone);
  }

  /// `StreamSubscription<InviteEvent>` - Add Stream Listener for Invite Events
  StreamSubscription<InviteEvent> onInvite(void Function(InviteEvent)? onData, {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return _inviteEvents.stream.listen(onData, onError: onError, onDone: onDone);
  }

  /// `StreamSubscription<ProgressEvent>` - Add Stream Listener for Progress Events
  StreamSubscription<ProgressEvent> onProgress(void Function(ProgressEvent)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return _progressEvents.stream.listen(onData, onError: onError, onDone: onDone);
  }

  /// `StreamSubscription<ProgressEvent>` - Add Stream Listener for Progress Events
  StreamSubscription<RefreshEvent> onRefresh(void Function(RefreshEvent)? onData, {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return _refreshEvents.stream.listen(onData, onError: onError, onDone: onDone);
  }

  /// `StreamSubscription<CompleteEvent>` - Add Stream Listener for Complete Events
  StreamSubscription<CompleteEvent> onComplete(void Function(CompleteEvent)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    return _completeEvents.stream.listen(onData, onError: onError, onDone: onDone);
  }
}
