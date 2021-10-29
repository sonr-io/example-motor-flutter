library sonr_plugin;

import 'dart:async';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';
import 'dart:typed_data';
import 'dart:isolate';
import 'src/src.dart';
export 'package:path/path.dart';
export 'package:path_provider/path_provider.dart';
export 'package:open_file/open_file.dart';
export 'package:get/get.dart';
export 'package:file_picker/src/file_picker.dart';
export 'src/src.dart';

/// [RPC_HOST] is the address for Sonr RPC Node
const RPC_HOST = 'localhost';

/// [RPC_SERVER_PORT] is the listening port for the Sonr RPC Node
const RPC_SERVER_PORT = 26225;

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
  final recentProfiles = RxList<Profile>();

  // GRPC Streams
  final _decisionEvents = StreamController<DecisionEvent>();
  final _refreshEvents = StreamController<RefreshEvent>();
  final _mailboxEvents = StreamController<MailboxEvent>();
  final _inviteEvents = StreamController<InviteEvent>();
  final _progressEvents = StreamController<ProgressEvent>();
  final _completeEvents = StreamController<CompleteEvent>();

  /// Enviornment Variables reference
  Map<String, String>? _enviornmentVariables;

  // GRPC Service Client
  late MotorServiceClient _client;

  // GRPC Event Channel
  late ClientChannel _channel;

  /// ### Checks permissions and Returns GetxService
  /// Optional Params for: `Profile`, `Location`, and `Map<String, String>`
  Future<SonrService> init({Map<String, String>? vars}) async {
    if (vars == null) {
      print('[SonrService] No Environment Variables Provided');
    }
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
    final request = InitializeRequest(
      connection: connection,
      location: location,
      profile: profile,
      deviceOptions: deviceOpts,
      variables: _enviornmentVariables,
      environment: BuildModeUtil.toEnvironment(),
    );

    // Delete Enviornment Variables Ref
    _enviornmentVariables = null;
    await _actionChannel.invokeMethod('start', request.writeToBuffer());

    // Create a client channel and client
    _channel = ClientChannel(RPC_HOST,
        port: RPC_SERVER_PORT,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ));

    // Create a client stub
    _client = MotorServiceClient(_channel);

    // Handle Lobby Refresh
    _client.onLobbyRefresh(Empty()).listen(
          (value) => _refreshEvents.add(value),
          onError: (err) => print("[RPC Client] ERROR: Listening to onLobbyRefresh \n" + err.toString()),
        );

    // Handle Mail Messages
    _client.onMailboxMessage(Empty()).listen(
      (value) {
        _mailboxEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onMailboxMessage \n" + err.toString()),
      cancelOnError: true,
    );

    // Create Decision Stream
    _client.onTransmitAccepted(Empty()).listen(
      (value) {
        _decisionEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransmitAccepted \n" + err.toString()),
    );

    // Create Decision Stream
    _client.onTransmitDeclined(Empty()).listen(
      (value) {
        _decisionEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransmitDeclined \n" + err.toString()),
    );

    // Create Invite Stream
    _client.onTransmitInvite(Empty()).listen(
      (value) {
        _inviteEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransmitInvite \n" + err.toString()),
    );

    // Create Progress Stream
    _client.onTransmitProgress(Empty()).listen(
      (value) {
        _progressEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransmitProgress \n" + err.toString()),
    );

    // Create Complete Stream
    _client.onTransmitComplete(Empty()).listen(
      (value) {
        _completeEvents.add(value);
      },
      onError: (err) => print("[RPC Client] ERROR: Listening to onTransmitComplete \n" + err.toString()),
    );
    // status(Status.ACTIVE);
  }

  /// #### Stops Sonr GRPC Server on Swift, or Java
  Future<void> stop() async {
    await _completeEvents.close();
    await _decisionEvents.close();
    await _inviteEvents.close();
    await _progressEvents.close();
    await _refreshEvents.close();
    await _mailboxEvents.close();
    await _channel.shutdown();
    await _actionChannel.invokeMethod('stop');
  }

  /// #### Pauses Sonr GRPC Server on Swift, or Java
  Future<void> pause() async {
    await _actionChannel.invokeMethod('pause');
  }

  /// #### Resumes Sonr GRPC Server on Swift, or Java
  Future<void> resume() async {
    await _actionChannel.invokeMethod('resume');
  }

  /// [pick()] Presents a native dialog for selecting files
  /// Optionally can be supplied after pick
  Future<List<String>> pick({bool supplyAfterPick = true, Peer? peer, FileType type = FileType.any}) async {
    // Initialize
    List<String> adjPaths = [];
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      withData: true,
      type: type,
    );

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
      final list = await newSupplyItemList(adjPaths);
      final resp = await supply(list, peer: peer);
      print(resp.toString());
    }
    return adjPaths;
  }

  /// [newSupplyItemList(List<String>)] creates a list of [SupplyRequest_Item]
  /// from a list of paths
  Future<List<SupplyItem>> newSupplyItemList(List<String>? paths) async {
    if (paths != null) {
      // Determine Thumbnail Size
      var thumbnailSize = DEFAULT_THUMB_WIDTH;
      if (paths.length > 4) {
        final interval = (paths.length / 4).floor();
        thumbnailSize = (DEFAULT_THUMB_WIDTH / interval).round();
      }

      // Initialize List
      List<SupplyItem> items = [];
      for (var i = 0; i < paths.length; i++) {
        final buf = await fetchThumbnail(paths[i], width: thumbnailSize);
        items.add(SupplyItem(path: paths[i], thumbnail: buf));
      }
      return items;
    }
    return [];
  }

  /// [supply(List<SupplyRequest_Item>)] Supply a list of paths to the node.
  /// Will be queued for a share.
  Future<SupplyResponse> supply(List<SupplyItem> items, {Peer? peer}) async {
    // Provide the request
    final supplyRequest = SupplyRequest(
      items: items,
      peer: peer,
      isPeerSupply: peer != null ? true : false,
    );
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
    if (resp.recents.profiles.length > 0) {
      // Initialize and Sort
      final respLists = resp.recents.profiles.toList();
      respLists.sort((a, b) => a.lastModified.compareTo(b.lastModified));

      // Add all profiles to list
      recentProfiles(resp.recents.profiles);
      recentProfiles.refresh();
    }
    return resp;
  }

  /// [share(Peer)] Shares queued transfer with peer.
  Future<ShareResponse> share(Peer peer, {List<String>? paths, MessageItem? message}) async {
    final shareRequest = ShareRequest(peer: peer, items: await newSupplyItemList(paths), message: message);
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

Future<List<int>> fetchThumbnail(String path, {int width = DEFAULT_THUMB_WIDTH}) async {
  var receivePort = ReceivePort();
  await Isolate.spawn(
      genThumb,
      ThumbParams(
        path: path,
        sendPort: receivePort.sendPort,
        width: width,
      ));
  var result = await receivePort.first as Uint8List?;
  if (result == null) {
    return [];
  }
  return result.toList();
}
