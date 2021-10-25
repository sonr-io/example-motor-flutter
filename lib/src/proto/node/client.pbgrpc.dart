///
//  Generated code. Do not modify.
//  source: proto/node/client.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../api/call.pb.dart' as $0;
import 'client.pb.dart' as $1;
import '../api/event.pb.dart' as $2;
export 'client.pb.dart';

class ClientServiceClient extends $grpc.Client {
  static final _$supply =
      $grpc.ClientMethod<$0.SupplyRequest, $0.SupplyResponse>(
          '/sonr.node.ClientService/Supply',
          ($0.SupplyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SupplyResponse.fromBuffer(value));
  static final _$edit = $grpc.ClientMethod<$0.EditRequest, $0.EditResponse>(
      '/sonr.node.ClientService/Edit',
      ($0.EditRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditResponse.fromBuffer(value));
  static final _$fetch = $grpc.ClientMethod<$0.FetchRequest, $0.FetchResponse>(
      '/sonr.node.ClientService/Fetch',
      ($0.FetchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FetchResponse.fromBuffer(value));
  static final _$share = $grpc.ClientMethod<$0.ShareRequest, $0.ShareResponse>(
      '/sonr.node.ClientService/Share',
      ($0.ShareRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ShareResponse.fromBuffer(value));
  static final _$respond =
      $grpc.ClientMethod<$0.RespondRequest, $0.RespondResponse>(
          '/sonr.node.ClientService/Respond',
          ($0.RespondRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RespondResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$0.SearchRequest, $0.SearchResponse>(
          '/sonr.node.ClientService/Search',
          ($0.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SearchResponse.fromBuffer(value));
  static final _$onLobbyRefresh = $grpc.ClientMethod<$1.Empty, $2.RefreshEvent>(
      '/sonr.node.ClientService/OnLobbyRefresh',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.RefreshEvent.fromBuffer(value));
  static final _$onMailboxMessage =
      $grpc.ClientMethod<$1.Empty, $2.MailboxEvent>(
          '/sonr.node.ClientService/OnMailboxMessage',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.MailboxEvent.fromBuffer(value));
  static final _$onTransmitAccepted =
      $grpc.ClientMethod<$1.Empty, $2.DecisionEvent>(
          '/sonr.node.ClientService/OnTransmitAccepted',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.DecisionEvent.fromBuffer(value));
  static final _$onTransmitDeclined =
      $grpc.ClientMethod<$1.Empty, $2.DecisionEvent>(
          '/sonr.node.ClientService/OnTransmitDeclined',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.DecisionEvent.fromBuffer(value));
  static final _$onTransmitInvite =
      $grpc.ClientMethod<$1.Empty, $2.InviteEvent>(
          '/sonr.node.ClientService/OnTransmitInvite',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.InviteEvent.fromBuffer(value));
  static final _$onTransmitProgress =
      $grpc.ClientMethod<$1.Empty, $2.ProgressEvent>(
          '/sonr.node.ClientService/OnTransmitProgress',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ProgressEvent.fromBuffer(value));
  static final _$onTransmitComplete =
      $grpc.ClientMethod<$1.Empty, $2.CompleteEvent>(
          '/sonr.node.ClientService/OnTransmitComplete',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CompleteEvent.fromBuffer(value));

  ClientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SupplyResponse> supply($0.SupplyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$supply, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditResponse> edit($0.EditRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$edit, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchResponse> fetch($0.FetchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetch, request, options: options);
  }

  $grpc.ResponseFuture<$0.ShareResponse> share($0.ShareRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$share, request, options: options);
  }

  $grpc.ResponseFuture<$0.RespondResponse> respond($0.RespondRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$respond, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchResponse> search($0.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseStream<$2.RefreshEvent> onLobbyRefresh($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$onLobbyRefresh, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.MailboxEvent> onMailboxMessage($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$onMailboxMessage, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.DecisionEvent> onTransmitAccepted($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$onTransmitAccepted, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.DecisionEvent> onTransmitDeclined($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$onTransmitDeclined, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.InviteEvent> onTransmitInvite($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$onTransmitInvite, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.ProgressEvent> onTransmitProgress($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$onTransmitProgress, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.CompleteEvent> onTransmitComplete($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$onTransmitComplete, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ClientServiceBase extends $grpc.Service {
  $core.String get $name => 'sonr.node.ClientService';

  ClientServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SupplyRequest, $0.SupplyResponse>(
        'Supply',
        supply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplyRequest.fromBuffer(value),
        ($0.SupplyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditRequest, $0.EditResponse>(
        'Edit',
        edit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditRequest.fromBuffer(value),
        ($0.EditResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchRequest, $0.FetchResponse>(
        'Fetch',
        fetch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchRequest.fromBuffer(value),
        ($0.FetchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ShareRequest, $0.ShareResponse>(
        'Share',
        share_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ShareRequest.fromBuffer(value),
        ($0.ShareResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RespondRequest, $0.RespondResponse>(
        'Respond',
        respond_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RespondRequest.fromBuffer(value),
        ($0.RespondResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchRequest, $0.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchRequest.fromBuffer(value),
        ($0.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.RefreshEvent>(
        'OnLobbyRefresh',
        onLobbyRefresh_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.RefreshEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.MailboxEvent>(
        'OnMailboxMessage',
        onMailboxMessage_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.MailboxEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.DecisionEvent>(
        'OnTransmitAccepted',
        onTransmitAccepted_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.DecisionEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.DecisionEvent>(
        'OnTransmitDeclined',
        onTransmitDeclined_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.DecisionEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.InviteEvent>(
        'OnTransmitInvite',
        onTransmitInvite_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.InviteEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.ProgressEvent>(
        'OnTransmitProgress',
        onTransmitProgress_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.ProgressEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.CompleteEvent>(
        'OnTransmitComplete',
        onTransmitComplete_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.CompleteEvent value) => value.writeToBuffer()));
  }

  $async.Future<$0.SupplyResponse> supply_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SupplyRequest> request) async {
    return supply(call, await request);
  }

  $async.Future<$0.EditResponse> edit_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EditRequest> request) async {
    return edit(call, await request);
  }

  $async.Future<$0.FetchResponse> fetch_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FetchRequest> request) async {
    return fetch(call, await request);
  }

  $async.Future<$0.ShareResponse> share_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ShareRequest> request) async {
    return share(call, await request);
  }

  $async.Future<$0.RespondResponse> respond_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RespondRequest> request) async {
    return respond(call, await request);
  }

  $async.Future<$0.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Stream<$2.RefreshEvent> onLobbyRefresh_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* onLobbyRefresh(call, await request);
  }

  $async.Stream<$2.MailboxEvent> onMailboxMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* onMailboxMessage(call, await request);
  }

  $async.Stream<$2.DecisionEvent> onTransmitAccepted_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* onTransmitAccepted(call, await request);
  }

  $async.Stream<$2.DecisionEvent> onTransmitDeclined_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* onTransmitDeclined(call, await request);
  }

  $async.Stream<$2.InviteEvent> onTransmitInvite_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* onTransmitInvite(call, await request);
  }

  $async.Stream<$2.ProgressEvent> onTransmitProgress_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* onTransmitProgress(call, await request);
  }

  $async.Stream<$2.CompleteEvent> onTransmitComplete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* onTransmitComplete(call, await request);
  }

  $async.Future<$0.SupplyResponse> supply(
      $grpc.ServiceCall call, $0.SupplyRequest request);
  $async.Future<$0.EditResponse> edit(
      $grpc.ServiceCall call, $0.EditRequest request);
  $async.Future<$0.FetchResponse> fetch(
      $grpc.ServiceCall call, $0.FetchRequest request);
  $async.Future<$0.ShareResponse> share(
      $grpc.ServiceCall call, $0.ShareRequest request);
  $async.Future<$0.RespondResponse> respond(
      $grpc.ServiceCall call, $0.RespondRequest request);
  $async.Future<$0.SearchResponse> search(
      $grpc.ServiceCall call, $0.SearchRequest request);
  $async.Stream<$2.RefreshEvent> onLobbyRefresh(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$2.MailboxEvent> onMailboxMessage(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$2.DecisionEvent> onTransmitAccepted(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$2.DecisionEvent> onTransmitDeclined(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$2.InviteEvent> onTransmitInvite(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$2.ProgressEvent> onTransmitProgress(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$2.CompleteEvent> onTransmitComplete(
      $grpc.ServiceCall call, $1.Empty request);
}
