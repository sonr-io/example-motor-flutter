///
//  Generated code. Do not modify.
//  source: proto/node/highway.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'api.pb.dart' as $0;
export 'highway.pb.dart';

class HighwayStubClient extends $grpc.Client {
  static final _$listPeers =
      $grpc.ClientMethod<$0.ListPeersRequest, $0.ListPeersResponse>(
          '/sonr.node.HighwayStub/ListPeers',
          ($0.ListPeersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListPeersResponse.fromBuffer(value));
  static final _$decideExchange =
      $grpc.ClientMethod<$0.DecideRequest, $0.DecideResponse>(
          '/sonr.node.HighwayStub/DecideExchange',
          ($0.DecideRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DecideResponse.fromBuffer(value));
  static final _$sendExchange =
      $grpc.ClientMethod<$0.SendRequest, $0.SendResponse>(
          '/sonr.node.HighwayStub/SendExchange',
          ($0.SendRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendResponse.fromBuffer(value));
  static final _$cacheRecord =
      $grpc.ClientMethod<$0.CacheRecordRequest, $0.CacheRecordResponse>(
          '/sonr.node.HighwayStub/CacheRecord',
          ($0.CacheRecordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CacheRecordResponse.fromBuffer(value));
  static final _$getRecord =
      $grpc.ClientMethod<$0.GetRecordRequest, $0.GetRecordResponse>(
          '/sonr.node.HighwayStub/GetRecord',
          ($0.GetRecordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRecordResponse.fromBuffer(value));
  static final _$storeRecord =
      $grpc.ClientMethod<$0.StoreRecordRequest, $0.StoreRecordResponse>(
          '/sonr.node.HighwayStub/StoreRecord',
          ($0.StoreRecordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.StoreRecordResponse.fromBuffer(value));
  static final _$registerName =
      $grpc.ClientMethod<$0.RegisterNameRequest, $0.RegisterNameResponse>(
          '/sonr.node.HighwayStub/RegisterName',
          ($0.RegisterNameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterNameResponse.fromBuffer(value));
  static final _$verifyName =
      $grpc.ClientMethod<$0.VerifyNameRequest, $0.VerifyNameResponse>(
          '/sonr.node.HighwayStub/VerifyName',
          ($0.VerifyNameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VerifyNameResponse.fromBuffer(value));

  HighwayStubClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ListPeersResponse> listPeers(
      $0.ListPeersRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listPeers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.DecideResponse> decideExchange(
      $0.DecideRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$decideExchange, request, options: options);
  }

  $grpc.ResponseFuture<$0.SendResponse> sendExchange($0.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendExchange, request, options: options);
  }

  $grpc.ResponseFuture<$0.CacheRecordResponse> cacheRecord(
      $0.CacheRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cacheRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRecordResponse> getRecord(
      $0.GetRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.StoreRecordResponse> storeRecord(
      $0.StoreRecordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$storeRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterNameResponse> registerName(
      $0.RegisterNameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerName, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyNameResponse> verifyName(
      $0.VerifyNameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyName, request, options: options);
  }
}

abstract class HighwayStubServiceBase extends $grpc.Service {
  $core.String get $name => 'sonr.node.HighwayStub';

  HighwayStubServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListPeersRequest, $0.ListPeersResponse>(
        'ListPeers',
        listPeers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ListPeersRequest.fromBuffer(value),
        ($0.ListPeersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DecideRequest, $0.DecideResponse>(
        'DecideExchange',
        decideExchange_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DecideRequest.fromBuffer(value),
        ($0.DecideResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendRequest, $0.SendResponse>(
        'SendExchange',
        sendExchange_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendRequest.fromBuffer(value),
        ($0.SendResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CacheRecordRequest, $0.CacheRecordResponse>(
            'CacheRecord',
            cacheRecord_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CacheRecordRequest.fromBuffer(value),
            ($0.CacheRecordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRecordRequest, $0.GetRecordResponse>(
        'GetRecord',
        getRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRecordRequest.fromBuffer(value),
        ($0.GetRecordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.StoreRecordRequest, $0.StoreRecordResponse>(
            'StoreRecord',
            storeRecord_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.StoreRecordRequest.fromBuffer(value),
            ($0.StoreRecordResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RegisterNameRequest, $0.RegisterNameResponse>(
            'RegisterName',
            registerName_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RegisterNameRequest.fromBuffer(value),
            ($0.RegisterNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyNameRequest, $0.VerifyNameResponse>(
        'VerifyName',
        verifyName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyNameRequest.fromBuffer(value),
        ($0.VerifyNameResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ListPeersResponse> listPeers_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListPeersRequest> request) async* {
    yield* listPeers(call, await request);
  }

  $async.Future<$0.DecideResponse> decideExchange_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DecideRequest> request) async {
    return decideExchange(call, await request);
  }

  $async.Future<$0.SendResponse> sendExchange_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendRequest> request) async {
    return sendExchange(call, await request);
  }

  $async.Future<$0.CacheRecordResponse> cacheRecord_Pre($grpc.ServiceCall call,
      $async.Future<$0.CacheRecordRequest> request) async {
    return cacheRecord(call, await request);
  }

  $async.Future<$0.GetRecordResponse> getRecord_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetRecordRequest> request) async {
    return getRecord(call, await request);
  }

  $async.Future<$0.StoreRecordResponse> storeRecord_Pre($grpc.ServiceCall call,
      $async.Future<$0.StoreRecordRequest> request) async {
    return storeRecord(call, await request);
  }

  $async.Future<$0.RegisterNameResponse> registerName_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegisterNameRequest> request) async {
    return registerName(call, await request);
  }

  $async.Future<$0.VerifyNameResponse> verifyName_Pre($grpc.ServiceCall call,
      $async.Future<$0.VerifyNameRequest> request) async {
    return verifyName(call, await request);
  }

  $async.Stream<$0.ListPeersResponse> listPeers(
      $grpc.ServiceCall call, $0.ListPeersRequest request);
  $async.Future<$0.DecideResponse> decideExchange(
      $grpc.ServiceCall call, $0.DecideRequest request);
  $async.Future<$0.SendResponse> sendExchange(
      $grpc.ServiceCall call, $0.SendRequest request);
  $async.Future<$0.CacheRecordResponse> cacheRecord(
      $grpc.ServiceCall call, $0.CacheRecordRequest request);
  $async.Future<$0.GetRecordResponse> getRecord(
      $grpc.ServiceCall call, $0.GetRecordRequest request);
  $async.Future<$0.StoreRecordResponse> storeRecord(
      $grpc.ServiceCall call, $0.StoreRecordRequest request);
  $async.Future<$0.RegisterNameResponse> registerName(
      $grpc.ServiceCall call, $0.RegisterNameRequest request);
  $async.Future<$0.VerifyNameResponse> verifyName(
      $grpc.ServiceCall call, $0.VerifyNameRequest request);
}
