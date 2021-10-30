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
  static final _$authenticate =
      $grpc.ClientMethod<$0.AuthenticateRequest, $0.AuthenticateResponse>(
          '/sonr.node.HighwayService/Authenticate',
          ($0.AuthenticateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticateResponse.fromBuffer(value));
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

  $grpc.ResponseFuture<$0.AuthenticateResponse> authenticate(
      $0.AuthenticateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
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
    $addMethod(
        $grpc.ServiceMethod<$0.AuthenticateRequest, $0.AuthenticateResponse>(
            'Authenticate',
            authenticate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthenticateRequest.fromBuffer(value),
            ($0.AuthenticateResponse value) => value.writeToBuffer()));
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

  $async.Future<$0.AuthenticateResponse> authenticate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticateRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$0.LinkResponse> link_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LinkRequest> request) async {
    return link(call, await request);
  }

  $async.Future<$0.RegisterResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.AuthenticateResponse> authenticate(
      $grpc.ServiceCall call, $0.AuthenticateRequest request);
  $async.Future<$0.LinkResponse> link(
      $grpc.ServiceCall call, $0.LinkRequest request);
  $async.Future<$0.RegisterResponse> register(
      $grpc.ServiceCall call, $0.RegisterRequest request);
}
