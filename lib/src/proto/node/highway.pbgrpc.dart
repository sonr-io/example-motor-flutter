///
//  Generated code. Do not modify.
//  source: proto/node/highway.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../api/call.pb.dart' as $0;
export 'highway.pb.dart';

class HighwayServiceClient extends $grpc.Client {
  static final _$authorize =
      $grpc.ClientMethod<$0.AuthorizeRequest, $0.AuthorizeResponse>(
          '/sonr.node.HighwayService/Authorize',
          ($0.AuthorizeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthorizeResponse.fromBuffer(value));
  static final _$link = $grpc.ClientMethod<$0.LinkRequest, $0.LinkResponse>(
      '/sonr.node.HighwayService/Link',
      ($0.LinkRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LinkResponse.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$0.RegisterRequest, $0.RegisterResponse>(
          '/sonr.node.HighwayService/Register',
          ($0.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterResponse.fromBuffer(value));

  HighwayServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthorizeResponse> authorize(
      $0.AuthorizeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorize, request, options: options);
  }

  $grpc.ResponseFuture<$0.LinkResponse> link($0.LinkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$link, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterResponse> register($0.RegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }
}

abstract class HighwayServiceBase extends $grpc.Service {
  $core.String get $name => 'sonr.node.HighwayService';

  HighwayServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthorizeRequest, $0.AuthorizeResponse>(
        'Authorize',
        authorize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthorizeRequest.fromBuffer(value),
        ($0.AuthorizeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LinkRequest, $0.LinkResponse>(
        'Link',
        link_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LinkRequest.fromBuffer(value),
        ($0.LinkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.RegisterResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.RegisterResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthorizeResponse> authorize_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthorizeRequest> request) async {
    return authorize(call, await request);
  }

  $async.Future<$0.LinkResponse> link_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LinkRequest> request) async {
    return link(call, await request);
  }

  $async.Future<$0.RegisterResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.AuthorizeResponse> authorize(
      $grpc.ServiceCall call, $0.AuthorizeRequest request);
  $async.Future<$0.LinkResponse> link(
      $grpc.ServiceCall call, $0.LinkRequest request);
  $async.Future<$0.RegisterResponse> register(
      $grpc.ServiceCall call, $0.RegisterRequest request);
}
