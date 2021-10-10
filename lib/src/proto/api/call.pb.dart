///
//  Generated code. Do not modify.
//  source: proto/api/call.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../common/core.pb.dart' as $0;
import '../common/data.pb.dart' as $1;

import '../common/core.pbenum.dart' as $0;
import 'call.pbenum.dart';

export 'call.pbenum.dart';

class AuthorizeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthorizeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mnemonic')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..hasRequiredFields = false
  ;

  AuthorizeRequest._() : super();
  factory AuthorizeRequest({
    $core.String? sName,
    $core.String? mnemonic,
    $core.String? deviceId,
  }) {
    final _result = create();
    if (sName != null) {
      _result.sName = sName;
    }
    if (mnemonic != null) {
      _result.mnemonic = mnemonic;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    return _result;
  }
  factory AuthorizeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizeRequest clone() => AuthorizeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizeRequest copyWith(void Function(AuthorizeRequest) updates) => super.copyWith((message) => updates(message as AuthorizeRequest)) as AuthorizeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthorizeRequest create() => AuthorizeRequest._();
  AuthorizeRequest createEmptyInstance() => create();
  static $pb.PbList<AuthorizeRequest> createRepeated() => $pb.PbList<AuthorizeRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthorizeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizeRequest>(create);
  static AuthorizeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mnemonic => $_getSZ(1);
  @$pb.TagNumber(2)
  set mnemonic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMnemonic() => $_has(1);
  @$pb.TagNumber(2)
  void clearMnemonic() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);
}

class AuthorizeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthorizeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'AuthorizeResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  AuthorizeResponse._() : super();
  factory AuthorizeResponse({
    $core.bool? success,
    $core.String? error,
    $core.Map<$core.String, $core.String>? records,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (records != null) {
      _result.records.addAll(records);
    }
    return _result;
  }
  factory AuthorizeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizeResponse clone() => AuthorizeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizeResponse copyWith(void Function(AuthorizeResponse) updates) => super.copyWith((message) => updates(message as AuthorizeResponse)) as AuthorizeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthorizeResponse create() => AuthorizeResponse._();
  AuthorizeResponse createEmptyInstance() => create();
  static $pb.PbList<AuthorizeResponse> createRepeated() => $pb.PbList<AuthorizeResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthorizeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizeResponse>(create);
  static AuthorizeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get records => $_getMap(2);
}

class InitializeRequest_DeviceOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitializeRequest.DeviceOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'folders', entryClassName: 'InitializeRequest.DeviceOptions.FoldersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  InitializeRequest_DeviceOptions._() : super();
  factory InitializeRequest_DeviceOptions({
    $core.String? id,
    $core.Map<$core.String, $core.String>? folders,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (folders != null) {
      _result.folders.addAll(folders);
    }
    return _result;
  }
  factory InitializeRequest_DeviceOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializeRequest_DeviceOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializeRequest_DeviceOptions clone() => InitializeRequest_DeviceOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializeRequest_DeviceOptions copyWith(void Function(InitializeRequest_DeviceOptions) updates) => super.copyWith((message) => updates(message as InitializeRequest_DeviceOptions)) as InitializeRequest_DeviceOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_DeviceOptions create() => InitializeRequest_DeviceOptions._();
  InitializeRequest_DeviceOptions createEmptyInstance() => create();
  static $pb.PbList<InitializeRequest_DeviceOptions> createRepeated() => $pb.PbList<InitializeRequest_DeviceOptions>();
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_DeviceOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializeRequest_DeviceOptions>(create);
  static InitializeRequest_DeviceOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get folders => $_getMap(1);
}

class InitializeRequest_HostOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitializeRequest.HostOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quicTransport', protoName: 'quicTransport')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'httpTransport', protoName: 'httpTransport')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv4Only', protoName: 'ipv4Only')
    ..pc<InitializeRequest_IPAddress>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listenAddrs', $pb.PbFieldType.PM, protoName: 'listenAddrs', subBuilder: InitializeRequest_IPAddress.create)
    ..hasRequiredFields = false
  ;

  InitializeRequest_HostOptions._() : super();
  factory InitializeRequest_HostOptions({
    $core.bool? quicTransport,
    $core.bool? httpTransport,
    $core.bool? ipv4Only,
    $core.Iterable<InitializeRequest_IPAddress>? listenAddrs,
  }) {
    final _result = create();
    if (quicTransport != null) {
      _result.quicTransport = quicTransport;
    }
    if (httpTransport != null) {
      _result.httpTransport = httpTransport;
    }
    if (ipv4Only != null) {
      _result.ipv4Only = ipv4Only;
    }
    if (listenAddrs != null) {
      _result.listenAddrs.addAll(listenAddrs);
    }
    return _result;
  }
  factory InitializeRequest_HostOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializeRequest_HostOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializeRequest_HostOptions clone() => InitializeRequest_HostOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializeRequest_HostOptions copyWith(void Function(InitializeRequest_HostOptions) updates) => super.copyWith((message) => updates(message as InitializeRequest_HostOptions)) as InitializeRequest_HostOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_HostOptions create() => InitializeRequest_HostOptions._();
  InitializeRequest_HostOptions createEmptyInstance() => create();
  static $pb.PbList<InitializeRequest_HostOptions> createRepeated() => $pb.PbList<InitializeRequest_HostOptions>();
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_HostOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializeRequest_HostOptions>(create);
  static InitializeRequest_HostOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get quicTransport => $_getBF(0);
  @$pb.TagNumber(1)
  set quicTransport($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuicTransport() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuicTransport() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get httpTransport => $_getBF(1);
  @$pb.TagNumber(2)
  set httpTransport($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHttpTransport() => $_has(1);
  @$pb.TagNumber(2)
  void clearHttpTransport() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get ipv4Only => $_getBF(2);
  @$pb.TagNumber(3)
  set ipv4Only($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpv4Only() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpv4Only() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<InitializeRequest_IPAddress> get listenAddrs => $_getList(3);
}

class InitializeRequest_ServiceOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitializeRequest.ServiceOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textile')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mailbox')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buckets')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  InitializeRequest_ServiceOptions._() : super();
  factory InitializeRequest_ServiceOptions({
    $core.bool? textile,
    $core.bool? mailbox,
    $core.bool? buckets,
    $core.int? interval,
  }) {
    final _result = create();
    if (textile != null) {
      _result.textile = textile;
    }
    if (mailbox != null) {
      _result.mailbox = mailbox;
    }
    if (buckets != null) {
      _result.buckets = buckets;
    }
    if (interval != null) {
      _result.interval = interval;
    }
    return _result;
  }
  factory InitializeRequest_ServiceOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializeRequest_ServiceOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializeRequest_ServiceOptions clone() => InitializeRequest_ServiceOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializeRequest_ServiceOptions copyWith(void Function(InitializeRequest_ServiceOptions) updates) => super.copyWith((message) => updates(message as InitializeRequest_ServiceOptions)) as InitializeRequest_ServiceOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_ServiceOptions create() => InitializeRequest_ServiceOptions._();
  InitializeRequest_ServiceOptions createEmptyInstance() => create();
  static $pb.PbList<InitializeRequest_ServiceOptions> createRepeated() => $pb.PbList<InitializeRequest_ServiceOptions>();
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_ServiceOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializeRequest_ServiceOptions>(create);
  static InitializeRequest_ServiceOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get textile => $_getBF(0);
  @$pb.TagNumber(1)
  set textile($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextile() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextile() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get mailbox => $_getBF(1);
  @$pb.TagNumber(2)
  set mailbox($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMailbox() => $_has(1);
  @$pb.TagNumber(2)
  void clearMailbox() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get buckets => $_getBF(2);
  @$pb.TagNumber(3)
  set buckets($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBuckets() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuckets() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get interval => $_getIZ(3);
  @$pb.TagNumber(4)
  set interval($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInterval() => $_has(3);
  @$pb.TagNumber(4)
  void clearInterval() => clearField(4);
}

class InitializeRequest_IPAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitializeRequest.IPAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internal')
    ..e<InitializeRequest_IPAddress_Family>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'family', $pb.PbFieldType.OE, defaultOrMaker: InitializeRequest_IPAddress_Family.IPV4, valueOf: InitializeRequest_IPAddress_Family.valueOf, enumValues: InitializeRequest_IPAddress_Family.values)
    ..hasRequiredFields = false
  ;

  InitializeRequest_IPAddress._() : super();
  factory InitializeRequest_IPAddress({
    $core.String? name,
    $core.String? address,
    $core.bool? internal,
    InitializeRequest_IPAddress_Family? family,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (address != null) {
      _result.address = address;
    }
    if (internal != null) {
      _result.internal = internal;
    }
    if (family != null) {
      _result.family = family;
    }
    return _result;
  }
  factory InitializeRequest_IPAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializeRequest_IPAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializeRequest_IPAddress clone() => InitializeRequest_IPAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializeRequest_IPAddress copyWith(void Function(InitializeRequest_IPAddress) updates) => super.copyWith((message) => updates(message as InitializeRequest_IPAddress)) as InitializeRequest_IPAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_IPAddress create() => InitializeRequest_IPAddress._();
  InitializeRequest_IPAddress createEmptyInstance() => create();
  static $pb.PbList<InitializeRequest_IPAddress> createRepeated() => $pb.PbList<InitializeRequest_IPAddress>();
  @$core.pragma('dart2js:noInline')
  static InitializeRequest_IPAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializeRequest_IPAddress>(create);
  static InitializeRequest_IPAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get internal => $_getBF(2);
  @$pb.TagNumber(3)
  set internal($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInternal() => $_has(2);
  @$pb.TagNumber(3)
  void clearInternal() => clearField(3);

  @$pb.TagNumber(4)
  InitializeRequest_IPAddress_Family get family => $_getN(3);
  @$pb.TagNumber(4)
  set family(InitializeRequest_IPAddress_Family v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFamily() => $_has(3);
  @$pb.TagNumber(4)
  void clearFamily() => clearField(4);
}

class InitializeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitializeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOM<$0.Location>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: $0.Location.create)
    ..aOM<$0.Profile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $0.Profile.create)
    ..e<$0.Connection>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connection', $pb.PbFieldType.OE, defaultOrMaker: $0.Connection.WIFI, valueOf: $0.Connection.valueOf, enumValues: $0.Connection.values)
    ..aOM<InitializeRequest_HostOptions>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostOptions', protoName: 'hostOptions', subBuilder: InitializeRequest_HostOptions.create)
    ..aOM<InitializeRequest_ServiceOptions>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceOptions', protoName: 'serviceOptions', subBuilder: InitializeRequest_ServiceOptions.create)
    ..aOM<InitializeRequest_DeviceOptions>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceOptions', protoName: 'deviceOptions', subBuilder: InitializeRequest_DeviceOptions.create)
    ..e<$0.Environment>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environment', $pb.PbFieldType.OE, defaultOrMaker: $0.Environment.DEVELOPMENT, valueOf: $0.Environment.valueOf, enumValues: $0.Environment.values)
    ..m<$core.String, $core.String>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variables', entryClassName: 'InitializeRequest.VariablesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  InitializeRequest._() : super();
  factory InitializeRequest({
    $0.Location? location,
    $0.Profile? profile,
    $0.Connection? connection,
    InitializeRequest_HostOptions? hostOptions,
    InitializeRequest_ServiceOptions? serviceOptions,
    InitializeRequest_DeviceOptions? deviceOptions,
    $0.Environment? environment,
    $core.Map<$core.String, $core.String>? variables,
  }) {
    final _result = create();
    if (location != null) {
      _result.location = location;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (connection != null) {
      _result.connection = connection;
    }
    if (hostOptions != null) {
      _result.hostOptions = hostOptions;
    }
    if (serviceOptions != null) {
      _result.serviceOptions = serviceOptions;
    }
    if (deviceOptions != null) {
      _result.deviceOptions = deviceOptions;
    }
    if (environment != null) {
      _result.environment = environment;
    }
    if (variables != null) {
      _result.variables.addAll(variables);
    }
    return _result;
  }
  factory InitializeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializeRequest clone() => InitializeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializeRequest copyWith(void Function(InitializeRequest) updates) => super.copyWith((message) => updates(message as InitializeRequest)) as InitializeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitializeRequest create() => InitializeRequest._();
  InitializeRequest createEmptyInstance() => create();
  static $pb.PbList<InitializeRequest> createRepeated() => $pb.PbList<InitializeRequest>();
  @$core.pragma('dart2js:noInline')
  static InitializeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializeRequest>(create);
  static InitializeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($0.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $0.Location ensureLocation() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Profile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($0.Profile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $0.Profile ensureProfile() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Connection get connection => $_getN(2);
  @$pb.TagNumber(3)
  set connection($0.Connection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConnection() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnection() => clearField(3);

  @$pb.TagNumber(4)
  InitializeRequest_HostOptions get hostOptions => $_getN(3);
  @$pb.TagNumber(4)
  set hostOptions(InitializeRequest_HostOptions v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHostOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearHostOptions() => clearField(4);
  @$pb.TagNumber(4)
  InitializeRequest_HostOptions ensureHostOptions() => $_ensure(3);

  @$pb.TagNumber(5)
  InitializeRequest_ServiceOptions get serviceOptions => $_getN(4);
  @$pb.TagNumber(5)
  set serviceOptions(InitializeRequest_ServiceOptions v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasServiceOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearServiceOptions() => clearField(5);
  @$pb.TagNumber(5)
  InitializeRequest_ServiceOptions ensureServiceOptions() => $_ensure(4);

  @$pb.TagNumber(6)
  InitializeRequest_DeviceOptions get deviceOptions => $_getN(5);
  @$pb.TagNumber(6)
  set deviceOptions(InitializeRequest_DeviceOptions v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeviceOptions() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceOptions() => clearField(6);
  @$pb.TagNumber(6)
  InitializeRequest_DeviceOptions ensureDeviceOptions() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.Environment get environment => $_getN(6);
  @$pb.TagNumber(7)
  set environment($0.Environment v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEnvironment() => $_has(6);
  @$pb.TagNumber(7)
  void clearEnvironment() => clearField(7);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get variables => $_getMap(7);
}

class InitializeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitializeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..aOM<$0.Profile>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $0.Profile.create)
    ..m<$core.String, $0.ProfileList>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recents', entryClassName: 'InitializeResponse.RecentsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.ProfileList.create, packageName: const $pb.PackageName('sonr.api'))
    ..m<$core.String, $1.PayloadItemList>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'history', entryClassName: 'InitializeResponse.HistoryEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.PayloadItemList.create, packageName: const $pb.PackageName('sonr.api'))
    ..e<InitializeResponse_UserStatus>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userStatus', $pb.PbFieldType.OE, protoName: 'userStatus', defaultOrMaker: InitializeResponse_UserStatus.RETURNING, valueOf: InitializeResponse_UserStatus.valueOf, enumValues: InitializeResponse_UserStatus.values)
    ..hasRequiredFields = false
  ;

  InitializeResponse._() : super();
  factory InitializeResponse({
    $core.bool? success,
    $core.String? error,
    $0.Profile? profile,
    $core.Map<$core.String, $0.ProfileList>? recents,
    $core.Map<$core.String, $1.PayloadItemList>? history,
    InitializeResponse_UserStatus? userStatus,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (recents != null) {
      _result.recents.addAll(recents);
    }
    if (history != null) {
      _result.history.addAll(history);
    }
    if (userStatus != null) {
      _result.userStatus = userStatus;
    }
    return _result;
  }
  factory InitializeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializeResponse clone() => InitializeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializeResponse copyWith(void Function(InitializeResponse) updates) => super.copyWith((message) => updates(message as InitializeResponse)) as InitializeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitializeResponse create() => InitializeResponse._();
  InitializeResponse createEmptyInstance() => create();
  static $pb.PbList<InitializeResponse> createRepeated() => $pb.PbList<InitializeResponse>();
  @$core.pragma('dart2js:noInline')
  static InitializeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializeResponse>(create);
  static InitializeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $0.Profile get profile => $_getN(2);
  @$pb.TagNumber(3)
  set profile($0.Profile v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfile() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfile() => clearField(3);
  @$pb.TagNumber(3)
  $0.Profile ensureProfile() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $0.ProfileList> get recents => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $1.PayloadItemList> get history => $_getMap(4);

  @$pb.TagNumber(6)
  InitializeResponse_UserStatus get userStatus => $_getN(5);
  @$pb.TagNumber(6)
  set userStatus(InitializeResponse_UserStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserStatus() => clearField(6);
}

class SupplyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SupplyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paths')
    ..aOM<$0.Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $0.Peer.create)
    ..hasRequiredFields = false
  ;

  SupplyRequest._() : super();
  factory SupplyRequest({
    $core.Iterable<$core.String>? paths,
    $0.Peer? peer,
  }) {
    final _result = create();
    if (paths != null) {
      _result.paths.addAll(paths);
    }
    if (peer != null) {
      _result.peer = peer;
    }
    return _result;
  }
  factory SupplyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplyRequest clone() => SupplyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplyRequest copyWith(void Function(SupplyRequest) updates) => super.copyWith((message) => updates(message as SupplyRequest)) as SupplyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SupplyRequest create() => SupplyRequest._();
  SupplyRequest createEmptyInstance() => create();
  static $pb.PbList<SupplyRequest> createRepeated() => $pb.PbList<SupplyRequest>();
  @$core.pragma('dart2js:noInline')
  static SupplyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplyRequest>(create);
  static SupplyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get paths => $_getList(0);

  @$pb.TagNumber(2)
  $0.Peer get peer => $_getN(1);
  @$pb.TagNumber(2)
  set peer($0.Peer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeer() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeer() => clearField(2);
  @$pb.TagNumber(2)
  $0.Peer ensurePeer() => $_ensure(1);
}

class SupplyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SupplyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  SupplyResponse._() : super();
  factory SupplyResponse({
    $core.bool? success,
    $core.String? error,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory SupplyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplyResponse clone() => SupplyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplyResponse copyWith(void Function(SupplyResponse) updates) => super.copyWith((message) => updates(message as SupplyResponse)) as SupplyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SupplyResponse create() => SupplyResponse._();
  SupplyResponse createEmptyInstance() => create();
  static $pb.PbList<SupplyResponse> createRepeated() => $pb.PbList<SupplyResponse>();
  @$core.pragma('dart2js:noInline')
  static SupplyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplyResponse>(create);
  static SupplyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class EditRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOM<$0.Profile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $0.Profile.create)
    ..hasRequiredFields = false
  ;

  EditRequest._() : super();
  factory EditRequest({
    $0.Profile? profile,
  }) {
    final _result = create();
    if (profile != null) {
      _result.profile = profile;
    }
    return _result;
  }
  factory EditRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditRequest clone() => EditRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditRequest copyWith(void Function(EditRequest) updates) => super.copyWith((message) => updates(message as EditRequest)) as EditRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditRequest create() => EditRequest._();
  EditRequest createEmptyInstance() => create();
  static $pb.PbList<EditRequest> createRepeated() => $pb.PbList<EditRequest>();
  @$core.pragma('dart2js:noInline')
  static EditRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditRequest>(create);
  static EditRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Profile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile($0.Profile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => clearField(1);
  @$pb.TagNumber(1)
  $0.Profile ensureProfile() => $_ensure(0);
}

class EditResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  EditResponse._() : super();
  factory EditResponse({
    $core.bool? success,
    $core.String? error,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory EditResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditResponse clone() => EditResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditResponse copyWith(void Function(EditResponse) updates) => super.copyWith((message) => updates(message as EditResponse)) as EditResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditResponse create() => EditResponse._();
  EditResponse createEmptyInstance() => create();
  static $pb.PbList<EditResponse> createRepeated() => $pb.PbList<EditResponse>();
  @$core.pragma('dart2js:noInline')
  static EditResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditResponse>(create);
  static EditResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class FetchRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..e<FetchRequest_Key>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OE, defaultOrMaker: FetchRequest_Key.ALL, valueOf: FetchRequest_Key.valueOf, enumValues: FetchRequest_Key.values)
    ..hasRequiredFields = false
  ;

  FetchRequest._() : super();
  factory FetchRequest({
    FetchRequest_Key? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory FetchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchRequest clone() => FetchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchRequest copyWith(void Function(FetchRequest) updates) => super.copyWith((message) => updates(message as FetchRequest)) as FetchRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchRequest create() => FetchRequest._();
  FetchRequest createEmptyInstance() => create();
  static $pb.PbList<FetchRequest> createRepeated() => $pb.PbList<FetchRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchRequest>(create);
  static FetchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FetchRequest_Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(FetchRequest_Key v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class FetchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..aOM<$0.Profile>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $0.Profile.create)
    ..m<$core.String, $0.Peer>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'devices', entryClassName: 'FetchResponse.DevicesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.Peer.create, packageName: const $pb.PackageName('sonr.api'))
    ..m<$core.String, $0.ProfileList>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recents', entryClassName: 'FetchResponse.RecentsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.ProfileList.create, packageName: const $pb.PackageName('sonr.api'))
    ..m<$core.String, $1.PayloadItemList>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'history', entryClassName: 'FetchResponse.HistoryEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.PayloadItemList.create, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  FetchResponse._() : super();
  factory FetchResponse({
    $core.bool? success,
    $core.String? error,
    $0.Profile? profile,
    $core.Map<$core.String, $0.Peer>? devices,
    $core.Map<$core.String, $0.ProfileList>? recents,
    $core.Map<$core.String, $1.PayloadItemList>? history,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (devices != null) {
      _result.devices.addAll(devices);
    }
    if (recents != null) {
      _result.recents.addAll(recents);
    }
    if (history != null) {
      _result.history.addAll(history);
    }
    return _result;
  }
  factory FetchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchResponse clone() => FetchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchResponse copyWith(void Function(FetchResponse) updates) => super.copyWith((message) => updates(message as FetchResponse)) as FetchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchResponse create() => FetchResponse._();
  FetchResponse createEmptyInstance() => create();
  static $pb.PbList<FetchResponse> createRepeated() => $pb.PbList<FetchResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchResponse>(create);
  static FetchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $0.Profile get profile => $_getN(2);
  @$pb.TagNumber(3)
  set profile($0.Profile v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfile() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfile() => clearField(3);
  @$pb.TagNumber(3)
  $0.Profile ensureProfile() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $0.Peer> get devices => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $0.ProfileList> get recents => $_getMap(4);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $1.PayloadItemList> get history => $_getMap(5);
}

class LinkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LinkRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mnemonic')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..e<LinkRequest_Method>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'method', $pb.PbFieldType.OE, defaultOrMaker: LinkRequest_Method.ADD, valueOf: LinkRequest_Method.valueOf, enumValues: LinkRequest_Method.values)
    ..hasRequiredFields = false
  ;

  LinkRequest._() : super();
  factory LinkRequest({
    $core.String? sName,
    $core.String? mnemonic,
    $core.String? deviceId,
    LinkRequest_Method? method,
  }) {
    final _result = create();
    if (sName != null) {
      _result.sName = sName;
    }
    if (mnemonic != null) {
      _result.mnemonic = mnemonic;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (method != null) {
      _result.method = method;
    }
    return _result;
  }
  factory LinkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkRequest clone() => LinkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkRequest copyWith(void Function(LinkRequest) updates) => super.copyWith((message) => updates(message as LinkRequest)) as LinkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LinkRequest create() => LinkRequest._();
  LinkRequest createEmptyInstance() => create();
  static $pb.PbList<LinkRequest> createRepeated() => $pb.PbList<LinkRequest>();
  @$core.pragma('dart2js:noInline')
  static LinkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkRequest>(create);
  static LinkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mnemonic => $_getSZ(1);
  @$pb.TagNumber(2)
  set mnemonic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMnemonic() => $_has(1);
  @$pb.TagNumber(2)
  void clearMnemonic() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);

  @$pb.TagNumber(4)
  LinkRequest_Method get method => $_getN(3);
  @$pb.TagNumber(4)
  set method(LinkRequest_Method v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMethod() => $_has(3);
  @$pb.TagNumber(4)
  void clearMethod() => clearField(4);
}

class LinkResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LinkResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'LinkResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  LinkResponse._() : super();
  factory LinkResponse({
    $core.bool? success,
    $core.String? error,
    $core.Map<$core.String, $core.String>? records,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (records != null) {
      _result.records.addAll(records);
    }
    return _result;
  }
  factory LinkResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkResponse clone() => LinkResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkResponse copyWith(void Function(LinkResponse) updates) => super.copyWith((message) => updates(message as LinkResponse)) as LinkResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LinkResponse create() => LinkResponse._();
  LinkResponse createEmptyInstance() => create();
  static $pb.PbList<LinkResponse> createRepeated() => $pb.PbList<LinkResponse>();
  @$core.pragma('dart2js:noInline')
  static LinkResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkResponse>(create);
  static LinkResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get records => $_getMap(2);
}

class ShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ShareRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOM<$0.Peer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $0.Peer.create)
    ..aOM<$1.MessageItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: $1.MessageItem.create)
    ..hasRequiredFields = false
  ;

  ShareRequest._() : super();
  factory ShareRequest({
    $0.Peer? peer,
    $1.MessageItem? message,
  }) {
    final _result = create();
    if (peer != null) {
      _result.peer = peer;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory ShareRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareRequest clone() => ShareRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareRequest copyWith(void Function(ShareRequest) updates) => super.copyWith((message) => updates(message as ShareRequest)) as ShareRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShareRequest create() => ShareRequest._();
  ShareRequest createEmptyInstance() => create();
  static $pb.PbList<ShareRequest> createRepeated() => $pb.PbList<ShareRequest>();
  @$core.pragma('dart2js:noInline')
  static ShareRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareRequest>(create);
  static ShareRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Peer get peer => $_getN(0);
  @$pb.TagNumber(1)
  set peer($0.Peer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => clearField(1);
  @$pb.TagNumber(1)
  $0.Peer ensurePeer() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.MessageItem get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($1.MessageItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  $1.MessageItem ensureMessage() => $_ensure(1);
}

class ShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ShareResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  ShareResponse._() : super();
  factory ShareResponse({
    $core.bool? success,
    $core.String? error,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory ShareResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareResponse clone() => ShareResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareResponse copyWith(void Function(ShareResponse) updates) => super.copyWith((message) => updates(message as ShareResponse)) as ShareResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShareResponse create() => ShareResponse._();
  ShareResponse createEmptyInstance() => create();
  static $pb.PbList<ShareResponse> createRepeated() => $pb.PbList<ShareResponse>();
  @$core.pragma('dart2js:noInline')
  static ShareResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareResponse>(create);
  static ShareResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class RegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prefix')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..hasRequiredFields = false
  ;

  RegisterRequest._() : super();
  factory RegisterRequest({
    $core.String? sName,
    $core.String? prefix,
    $core.String? fingerprint,
  }) {
    final _result = create();
    if (sName != null) {
      _result.sName = sName;
    }
    if (prefix != null) {
      _result.prefix = prefix;
    }
    if (fingerprint != null) {
      _result.fingerprint = fingerprint;
    }
    return _result;
  }
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get prefix => $_getSZ(1);
  @$pb.TagNumber(2)
  set prefix($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrefix() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fingerprint => $_getSZ(2);
  @$pb.TagNumber(3)
  set fingerprint($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFingerprint() => $_has(2);
  @$pb.TagNumber(3)
  void clearFingerprint() => clearField(3);
}

class RegisterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'RegisterResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  RegisterResponse._() : super();
  factory RegisterResponse({
    $core.bool? success,
    $core.String? error,
    $core.Map<$core.String, $core.String>? records,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (records != null) {
      _result.records.addAll(records);
    }
    return _result;
  }
  factory RegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse clone() => RegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse copyWith(void Function(RegisterResponse) updates) => super.copyWith((message) => updates(message as RegisterResponse)) as RegisterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResponse create() => RegisterResponse._();
  RegisterResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse> createRepeated() => $pb.PbList<RegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse>(create);
  static RegisterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get records => $_getMap(2);
}

class RespondRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RespondRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decision')
    ..aOM<$0.Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $0.Peer.create)
    ..hasRequiredFields = false
  ;

  RespondRequest._() : super();
  factory RespondRequest({
    $core.bool? decision,
    $0.Peer? peer,
  }) {
    final _result = create();
    if (decision != null) {
      _result.decision = decision;
    }
    if (peer != null) {
      _result.peer = peer;
    }
    return _result;
  }
  factory RespondRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RespondRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RespondRequest clone() => RespondRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RespondRequest copyWith(void Function(RespondRequest) updates) => super.copyWith((message) => updates(message as RespondRequest)) as RespondRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RespondRequest create() => RespondRequest._();
  RespondRequest createEmptyInstance() => create();
  static $pb.PbList<RespondRequest> createRepeated() => $pb.PbList<RespondRequest>();
  @$core.pragma('dart2js:noInline')
  static RespondRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RespondRequest>(create);
  static RespondRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get decision => $_getBF(0);
  @$pb.TagNumber(1)
  set decision($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDecision() => $_has(0);
  @$pb.TagNumber(1)
  void clearDecision() => clearField(1);

  @$pb.TagNumber(2)
  $0.Peer get peer => $_getN(1);
  @$pb.TagNumber(2)
  set peer($0.Peer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeer() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeer() => clearField(2);
  @$pb.TagNumber(2)
  $0.Peer ensurePeer() => $_ensure(1);
}

class RespondResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RespondResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  RespondResponse._() : super();
  factory RespondResponse({
    $core.bool? success,
    $core.String? error,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory RespondResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RespondResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RespondResponse clone() => RespondResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RespondResponse copyWith(void Function(RespondResponse) updates) => super.copyWith((message) => updates(message as RespondResponse)) as RespondResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RespondResponse create() => RespondResponse._();
  RespondResponse createEmptyInstance() => create();
  static $pb.PbList<RespondResponse> createRepeated() => $pb.PbList<RespondResponse>();
  @$core.pragma('dart2js:noInline')
  static RespondResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RespondResponse>(create);
  static RespondResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

enum SearchRequest_Query {
  sName, 
  peerId, 
  notSet
}

class SearchRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SearchRequest_Query> _SearchRequest_QueryByTag = {
    1 : SearchRequest_Query.sName,
    2 : SearchRequest_Query.peerId,
    0 : SearchRequest_Query.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerId', protoName: 'peerId')
    ..hasRequiredFields = false
  ;

  SearchRequest._() : super();
  factory SearchRequest({
    $core.String? sName,
    $core.String? peerId,
  }) {
    final _result = create();
    if (sName != null) {
      _result.sName = sName;
    }
    if (peerId != null) {
      _result.peerId = peerId;
    }
    return _result;
  }
  factory SearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchRequest clone() => SearchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchRequest copyWith(void Function(SearchRequest) updates) => super.copyWith((message) => updates(message as SearchRequest)) as SearchRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchRequest create() => SearchRequest._();
  SearchRequest createEmptyInstance() => create();
  static $pb.PbList<SearchRequest> createRepeated() => $pb.PbList<SearchRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchRequest>(create);
  static SearchRequest? _defaultInstance;

  SearchRequest_Query whichQuery() => _SearchRequest_QueryByTag[$_whichOneof(0)]!;
  void clearQuery() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get sName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get peerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set peerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeerId() => clearField(2);
}

class SearchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..aOM<$0.Peer>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $0.Peer.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerId', protoName: 'peerId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..hasRequiredFields = false
  ;

  SearchResponse._() : super();
  factory SearchResponse({
    $core.bool? success,
    $core.String? error,
    $0.Peer? peer,
    $core.String? peerId,
    $core.String? sName,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (peer != null) {
      _result.peer = peer;
    }
    if (peerId != null) {
      _result.peerId = peerId;
    }
    if (sName != null) {
      _result.sName = sName;
    }
    return _result;
  }
  factory SearchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchResponse clone() => SearchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchResponse copyWith(void Function(SearchResponse) updates) => super.copyWith((message) => updates(message as SearchResponse)) as SearchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchResponse create() => SearchResponse._();
  SearchResponse createEmptyInstance() => create();
  static $pb.PbList<SearchResponse> createRepeated() => $pb.PbList<SearchResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResponse>(create);
  static SearchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $0.Peer get peer => $_getN(2);
  @$pb.TagNumber(3)
  set peer($0.Peer v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPeer() => $_has(2);
  @$pb.TagNumber(3)
  void clearPeer() => clearField(3);
  @$pb.TagNumber(3)
  $0.Peer ensurePeer() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get peerId => $_getSZ(3);
  @$pb.TagNumber(4)
  set peerId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPeerId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeerId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sName => $_getSZ(4);
  @$pb.TagNumber(5)
  set sName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSName() => $_has(4);
  @$pb.TagNumber(5)
  void clearSName() => clearField(5);
}

