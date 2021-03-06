///
//  Generated code. Do not modify.
//  source: proto/node/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/core.pb.dart' as $3;
import '../common/data.pb.dart' as $4;

import '../common/core.pbenum.dart' as $3;
import 'api.pbenum.dart';

export 'api.pbenum.dart';

class InitializeRequest_DeviceOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitializeRequest.DeviceOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homeDir', protoName: 'homeDir')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportDir', protoName: 'supportDir')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tempDir', protoName: 'tempDir')
    ..hasRequiredFields = false
  ;

  InitializeRequest_DeviceOptions._() : super();
  factory InitializeRequest_DeviceOptions({
    $core.String? id,
    $core.String? homeDir,
    $core.String? supportDir,
    $core.String? tempDir,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (homeDir != null) {
      _result.homeDir = homeDir;
    }
    if (supportDir != null) {
      _result.supportDir = supportDir;
    }
    if (tempDir != null) {
      _result.tempDir = tempDir;
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
  $core.String get homeDir => $_getSZ(1);
  @$pb.TagNumber(2)
  set homeDir($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHomeDir() => $_has(1);
  @$pb.TagNumber(2)
  void clearHomeDir() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get supportDir => $_getSZ(2);
  @$pb.TagNumber(3)
  set supportDir($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSupportDir() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupportDir() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tempDir => $_getSZ(3);
  @$pb.TagNumber(4)
  set tempDir($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTempDir() => $_has(3);
  @$pb.TagNumber(4)
  void clearTempDir() => clearField(4);
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
    ..aOM<$3.Location>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: $3.Location.create)
    ..aOM<$3.Profile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $3.Profile.create)
    ..e<$3.Connection>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connection', $pb.PbFieldType.OE, defaultOrMaker: $3.Connection.WIFI, valueOf: $3.Connection.valueOf, enumValues: $3.Connection.values)
    ..aOM<InitializeRequest_HostOptions>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostOptions', protoName: 'hostOptions', subBuilder: InitializeRequest_HostOptions.create)
    ..aOM<InitializeRequest_ServiceOptions>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceOptions', protoName: 'serviceOptions', subBuilder: InitializeRequest_ServiceOptions.create)
    ..aOM<InitializeRequest_DeviceOptions>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceOptions', protoName: 'deviceOptions', subBuilder: InitializeRequest_DeviceOptions.create)
    ..e<$3.Environment>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environment', $pb.PbFieldType.OE, defaultOrMaker: $3.Environment.DEVELOPMENT, valueOf: $3.Environment.valueOf, enumValues: $3.Environment.values)
    ..m<$core.String, $core.String>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variables', entryClassName: 'InitializeRequest.VariablesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  InitializeRequest._() : super();
  factory InitializeRequest({
    $3.Location? location,
    $3.Profile? profile,
    $3.Connection? connection,
    InitializeRequest_HostOptions? hostOptions,
    InitializeRequest_ServiceOptions? serviceOptions,
    InitializeRequest_DeviceOptions? deviceOptions,
    $3.Environment? environment,
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
  $3.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($3.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $3.Location ensureLocation() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Profile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($3.Profile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $3.Profile ensureProfile() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.Connection get connection => $_getN(2);
  @$pb.TagNumber(3)
  set connection($3.Connection v) { setField(3, v); }
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
  $3.Environment get environment => $_getN(6);
  @$pb.TagNumber(7)
  set environment($3.Environment v) { setField(7, v); }
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
    ..aOM<$3.Profile>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: $3.Profile.create)
    ..m<$core.String, $3.ProfileList>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recents', entryClassName: 'InitializeResponse.RecentsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $3.ProfileList.create, packageName: const $pb.PackageName('sonr.api'))
    ..m<$core.String, $4.PayloadList>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'history', entryClassName: 'InitializeResponse.HistoryEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $4.PayloadList.create, packageName: const $pb.PackageName('sonr.api'))
    ..e<InitializeResponse_UserStatus>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userStatus', $pb.PbFieldType.OE, protoName: 'userStatus', defaultOrMaker: InitializeResponse_UserStatus.RETURNING, valueOf: InitializeResponse_UserStatus.valueOf, enumValues: InitializeResponse_UserStatus.values)
    ..hasRequiredFields = false
  ;

  InitializeResponse._() : super();
  factory InitializeResponse({
    $core.bool? success,
    $core.String? error,
    $3.Profile? profile,
    $core.Map<$core.String, $3.ProfileList>? recents,
    $core.Map<$core.String, $4.PayloadList>? history,
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
  $3.Profile get profile => $_getN(2);
  @$pb.TagNumber(3)
  set profile($3.Profile v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfile() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfile() => clearField(3);
  @$pb.TagNumber(3)
  $3.Profile ensureProfile() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $3.ProfileList> get recents => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $4.PayloadList> get history => $_getMap(4);

  @$pb.TagNumber(6)
  InitializeResponse_UserStatus get userStatus => $_getN(5);
  @$pb.TagNumber(6)
  set userStatus(InitializeResponse_UserStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserStatus() => clearField(6);
}

class ShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ShareRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOM<$3.Peer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $3.Peer.create)
    ..aOM<$4.MessageItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: $4.MessageItem.create)
    ..pc<$4.SupplyItem>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: $4.SupplyItem.create)
    ..hasRequiredFields = false
  ;

  ShareRequest._() : super();
  factory ShareRequest({
    $3.Peer? peer,
    $4.MessageItem? message,
    $core.Iterable<$4.SupplyItem>? items,
  }) {
    final _result = create();
    if (peer != null) {
      _result.peer = peer;
    }
    if (message != null) {
      _result.message = message;
    }
    if (items != null) {
      _result.items.addAll(items);
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
  $3.Peer get peer => $_getN(0);
  @$pb.TagNumber(1)
  set peer($3.Peer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => clearField(1);
  @$pb.TagNumber(1)
  $3.Peer ensurePeer() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.MessageItem get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($4.MessageItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  $4.MessageItem ensureMessage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$4.SupplyItem> get items => $_getList(2);
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

class RespondRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RespondRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decision')
    ..aOM<$3.Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $3.Peer.create)
    ..hasRequiredFields = false
  ;

  RespondRequest._() : super();
  factory RespondRequest({
    $core.bool? decision,
    $3.Peer? peer,
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
  $3.Peer get peer => $_getN(1);
  @$pb.TagNumber(2)
  set peer($3.Peer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeer() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeer() => clearField(2);
  @$pb.TagNumber(2)
  $3.Peer ensurePeer() => $_ensure(1);
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
    ..aOM<$3.Peer>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $3.Peer.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerId', protoName: 'peerId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..hasRequiredFields = false
  ;

  SearchResponse._() : super();
  factory SearchResponse({
    $core.bool? success,
    $core.String? error,
    $3.Peer? peer,
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
  $3.Peer get peer => $_getN(2);
  @$pb.TagNumber(3)
  set peer($3.Peer v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPeer() => $_has(2);
  @$pb.TagNumber(3)
  void clearPeer() => clearField(3);
  @$pb.TagNumber(3)
  $3.Peer ensurePeer() => $_ensure(2);

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

class ListPeersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPeersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mnemonic')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..hasRequiredFields = false
  ;

  ListPeersRequest._() : super();
  factory ListPeersRequest({
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
  factory ListPeersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPeersRequest clone() => ListPeersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPeersRequest copyWith(void Function(ListPeersRequest) updates) => super.copyWith((message) => updates(message as ListPeersRequest)) as ListPeersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeersRequest create() => ListPeersRequest._();
  ListPeersRequest createEmptyInstance() => create();
  static $pb.PbList<ListPeersRequest> createRepeated() => $pb.PbList<ListPeersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPeersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeersRequest>(create);
  static ListPeersRequest? _defaultInstance;

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

class ListPeersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPeersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'olc')
    ..pc<$3.Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peers', $pb.PbFieldType.PM, subBuilder: $3.Peer.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'received')
    ..hasRequiredFields = false
  ;

  ListPeersResponse._() : super();
  factory ListPeersResponse({
    $core.String? olc,
    $core.Iterable<$3.Peer>? peers,
    $fixnum.Int64? received,
  }) {
    final _result = create();
    if (olc != null) {
      _result.olc = olc;
    }
    if (peers != null) {
      _result.peers.addAll(peers);
    }
    if (received != null) {
      _result.received = received;
    }
    return _result;
  }
  factory ListPeersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPeersResponse clone() => ListPeersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPeersResponse copyWith(void Function(ListPeersResponse) updates) => super.copyWith((message) => updates(message as ListPeersResponse)) as ListPeersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeersResponse create() => ListPeersResponse._();
  ListPeersResponse createEmptyInstance() => create();
  static $pb.PbList<ListPeersResponse> createRepeated() => $pb.PbList<ListPeersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPeersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeersResponse>(create);
  static ListPeersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get olc => $_getSZ(0);
  @$pb.TagNumber(1)
  set olc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOlc() => $_has(0);
  @$pb.TagNumber(1)
  void clearOlc() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$3.Peer> get peers => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get received => $_getI64(2);
  @$pb.TagNumber(3)
  set received($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceived() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceived() => clearField(3);
}

class DecideRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DecideRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mnemonic')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..e<DecideRequest_Method>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'method', $pb.PbFieldType.OE, defaultOrMaker: DecideRequest_Method.ADD, valueOf: DecideRequest_Method.valueOf, enumValues: DecideRequest_Method.values)
    ..hasRequiredFields = false
  ;

  DecideRequest._() : super();
  factory DecideRequest({
    $core.String? sName,
    $core.String? mnemonic,
    $core.String? deviceId,
    DecideRequest_Method? method,
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
  factory DecideRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DecideRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DecideRequest clone() => DecideRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DecideRequest copyWith(void Function(DecideRequest) updates) => super.copyWith((message) => updates(message as DecideRequest)) as DecideRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DecideRequest create() => DecideRequest._();
  DecideRequest createEmptyInstance() => create();
  static $pb.PbList<DecideRequest> createRepeated() => $pb.PbList<DecideRequest>();
  @$core.pragma('dart2js:noInline')
  static DecideRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DecideRequest>(create);
  static DecideRequest? _defaultInstance;

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
  DecideRequest_Method get method => $_getN(3);
  @$pb.TagNumber(4)
  set method(DecideRequest_Method v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMethod() => $_has(3);
  @$pb.TagNumber(4)
  void clearMethod() => clearField(4);
}

class DecideResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DecideResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'DecideResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  DecideResponse._() : super();
  factory DecideResponse({
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
  factory DecideResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DecideResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DecideResponse clone() => DecideResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DecideResponse copyWith(void Function(DecideResponse) updates) => super.copyWith((message) => updates(message as DecideResponse)) as DecideResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DecideResponse create() => DecideResponse._();
  DecideResponse createEmptyInstance() => create();
  static $pb.PbList<DecideResponse> createRepeated() => $pb.PbList<DecideResponse>();
  @$core.pragma('dart2js:noInline')
  static DecideResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DecideResponse>(create);
  static DecideResponse? _defaultInstance;

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

class SendRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOM<$3.Peer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', subBuilder: $3.Peer.create)
    ..aOM<$4.MessageItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: $4.MessageItem.create)
    ..pc<$4.SupplyItem>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: $4.SupplyItem.create)
    ..hasRequiredFields = false
  ;

  SendRequest._() : super();
  factory SendRequest({
    $3.Peer? peer,
    $4.MessageItem? message,
    $core.Iterable<$4.SupplyItem>? items,
  }) {
    final _result = create();
    if (peer != null) {
      _result.peer = peer;
    }
    if (message != null) {
      _result.message = message;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory SendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendRequest clone() => SendRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendRequest copyWith(void Function(SendRequest) updates) => super.copyWith((message) => updates(message as SendRequest)) as SendRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendRequest create() => SendRequest._();
  SendRequest createEmptyInstance() => create();
  static $pb.PbList<SendRequest> createRepeated() => $pb.PbList<SendRequest>();
  @$core.pragma('dart2js:noInline')
  static SendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendRequest>(create);
  static SendRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Peer get peer => $_getN(0);
  @$pb.TagNumber(1)
  set peer($3.Peer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => clearField(1);
  @$pb.TagNumber(1)
  $3.Peer ensurePeer() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.MessageItem get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($4.MessageItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  $4.MessageItem ensureMessage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$4.SupplyItem> get items => $_getList(2);
}

class SendResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  SendResponse._() : super();
  factory SendResponse({
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
  factory SendResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendResponse copyWith(void Function(SendResponse) updates) => super.copyWith((message) => updates(message as SendResponse)) as SendResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() => $pb.PbList<SendResponse>();
  @$core.pragma('dart2js:noInline')
  static SendResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendResponse>(create);
  static SendResponse? _defaultInstance;

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

class CacheRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CacheRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prefix')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  CacheRecordRequest._() : super();
  factory CacheRecordRequest({
    $core.String? sName,
    $core.String? prefix,
    $core.String? fingerprint,
    $core.String? publicKey,
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
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory CacheRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CacheRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CacheRecordRequest clone() => CacheRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CacheRecordRequest copyWith(void Function(CacheRecordRequest) updates) => super.copyWith((message) => updates(message as CacheRecordRequest)) as CacheRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CacheRecordRequest create() => CacheRecordRequest._();
  CacheRecordRequest createEmptyInstance() => create();
  static $pb.PbList<CacheRecordRequest> createRepeated() => $pb.PbList<CacheRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static CacheRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CacheRecordRequest>(create);
  static CacheRecordRequest? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class CacheRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CacheRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'CacheRecordResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  CacheRecordResponse._() : super();
  factory CacheRecordResponse({
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
  factory CacheRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CacheRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CacheRecordResponse clone() => CacheRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CacheRecordResponse copyWith(void Function(CacheRecordResponse) updates) => super.copyWith((message) => updates(message as CacheRecordResponse)) as CacheRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CacheRecordResponse create() => CacheRecordResponse._();
  CacheRecordResponse createEmptyInstance() => create();
  static $pb.PbList<CacheRecordResponse> createRepeated() => $pb.PbList<CacheRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static CacheRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CacheRecordResponse>(create);
  static CacheRecordResponse? _defaultInstance;

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

class GetRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prefix')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  GetRecordRequest._() : super();
  factory GetRecordRequest({
    $core.String? sName,
    $core.String? prefix,
    $core.String? fingerprint,
    $core.String? publicKey,
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
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory GetRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecordRequest clone() => GetRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecordRequest copyWith(void Function(GetRecordRequest) updates) => super.copyWith((message) => updates(message as GetRecordRequest)) as GetRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecordRequest create() => GetRecordRequest._();
  GetRecordRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecordRequest> createRepeated() => $pb.PbList<GetRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecordRequest>(create);
  static GetRecordRequest? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class GetRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'GetRecordResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  GetRecordResponse._() : super();
  factory GetRecordResponse({
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
  factory GetRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecordResponse clone() => GetRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecordResponse copyWith(void Function(GetRecordResponse) updates) => super.copyWith((message) => updates(message as GetRecordResponse)) as GetRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecordResponse create() => GetRecordResponse._();
  GetRecordResponse createEmptyInstance() => create();
  static $pb.PbList<GetRecordResponse> createRepeated() => $pb.PbList<GetRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecordResponse>(create);
  static GetRecordResponse? _defaultInstance;

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

class StoreRecordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreRecordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prefix')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  StoreRecordRequest._() : super();
  factory StoreRecordRequest({
    $core.String? sName,
    $core.String? prefix,
    $core.String? fingerprint,
    $core.String? publicKey,
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
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory StoreRecordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreRecordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreRecordRequest clone() => StoreRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreRecordRequest copyWith(void Function(StoreRecordRequest) updates) => super.copyWith((message) => updates(message as StoreRecordRequest)) as StoreRecordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreRecordRequest create() => StoreRecordRequest._();
  StoreRecordRequest createEmptyInstance() => create();
  static $pb.PbList<StoreRecordRequest> createRepeated() => $pb.PbList<StoreRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static StoreRecordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreRecordRequest>(create);
  static StoreRecordRequest? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class StoreRecordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreRecordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'StoreRecordResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  StoreRecordResponse._() : super();
  factory StoreRecordResponse({
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
  factory StoreRecordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreRecordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreRecordResponse clone() => StoreRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreRecordResponse copyWith(void Function(StoreRecordResponse) updates) => super.copyWith((message) => updates(message as StoreRecordResponse)) as StoreRecordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreRecordResponse create() => StoreRecordResponse._();
  StoreRecordResponse createEmptyInstance() => create();
  static $pb.PbList<StoreRecordResponse> createRepeated() => $pb.PbList<StoreRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static StoreRecordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreRecordResponse>(create);
  static StoreRecordResponse? _defaultInstance;

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

class RegisterNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterNameRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prefix')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  RegisterNameRequest._() : super();
  factory RegisterNameRequest({
    $core.String? sName,
    $core.String? prefix,
    $core.String? fingerprint,
    $core.String? publicKey,
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
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory RegisterNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterNameRequest clone() => RegisterNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterNameRequest copyWith(void Function(RegisterNameRequest) updates) => super.copyWith((message) => updates(message as RegisterNameRequest)) as RegisterNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterNameRequest create() => RegisterNameRequest._();
  RegisterNameRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterNameRequest> createRepeated() => $pb.PbList<RegisterNameRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterNameRequest>(create);
  static RegisterNameRequest? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class RegisterNameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterNameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'RegisterNameResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  RegisterNameResponse._() : super();
  factory RegisterNameResponse({
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
  factory RegisterNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterNameResponse clone() => RegisterNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterNameResponse copyWith(void Function(RegisterNameResponse) updates) => super.copyWith((message) => updates(message as RegisterNameResponse)) as RegisterNameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterNameResponse create() => RegisterNameResponse._();
  RegisterNameResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterNameResponse> createRepeated() => $pb.PbList<RegisterNameResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterNameResponse>(create);
  static RegisterNameResponse? _defaultInstance;

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

class VerifyNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyNameRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prefix')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  VerifyNameRequest._() : super();
  factory VerifyNameRequest({
    $core.String? sName,
    $core.String? prefix,
    $core.String? fingerprint,
    $core.String? publicKey,
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
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory VerifyNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyNameRequest clone() => VerifyNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyNameRequest copyWith(void Function(VerifyNameRequest) updates) => super.copyWith((message) => updates(message as VerifyNameRequest)) as VerifyNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyNameRequest create() => VerifyNameRequest._();
  VerifyNameRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyNameRequest> createRepeated() => $pb.PbList<VerifyNameRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyNameRequest>(create);
  static VerifyNameRequest? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class VerifyNameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyNameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'records', entryClassName: 'VerifyNameResponse.RecordsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  VerifyNameResponse._() : super();
  factory VerifyNameResponse({
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
  factory VerifyNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyNameResponse clone() => VerifyNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyNameResponse copyWith(void Function(VerifyNameResponse) updates) => super.copyWith((message) => updates(message as VerifyNameResponse)) as VerifyNameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyNameResponse create() => VerifyNameResponse._();
  VerifyNameResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyNameResponse> createRepeated() => $pb.PbList<VerifyNameResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyNameResponse>(create);
  static VerifyNameResponse? _defaultInstance;

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

