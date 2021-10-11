///
//  Generated code. Do not modify.
//  source: proto/common/core.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'core.pbenum.dart';

export 'core.pbenum.dart';

class Location_Placemark extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location.Placemark', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'street')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isoCountryCode', protoName: 'isoCountryCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postalCode', protoName: 'postalCode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'administrativeArea', protoName: 'administrativeArea')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subAdministrativeArea', protoName: 'subAdministrativeArea')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locality')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subLocality', protoName: 'subLocality')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thoroughfare')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subThoroughfare', protoName: 'subThoroughfare')
    ..hasRequiredFields = false
  ;

  Location_Placemark._() : super();
  factory Location_Placemark({
    $core.String? name,
    $core.String? street,
    $core.String? isoCountryCode,
    $core.String? country,
    $core.String? postalCode,
    $core.String? administrativeArea,
    $core.String? subAdministrativeArea,
    $core.String? locality,
    $core.String? subLocality,
    $core.String? thoroughfare,
    $core.String? subThoroughfare,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (street != null) {
      _result.street = street;
    }
    if (isoCountryCode != null) {
      _result.isoCountryCode = isoCountryCode;
    }
    if (country != null) {
      _result.country = country;
    }
    if (postalCode != null) {
      _result.postalCode = postalCode;
    }
    if (administrativeArea != null) {
      _result.administrativeArea = administrativeArea;
    }
    if (subAdministrativeArea != null) {
      _result.subAdministrativeArea = subAdministrativeArea;
    }
    if (locality != null) {
      _result.locality = locality;
    }
    if (subLocality != null) {
      _result.subLocality = subLocality;
    }
    if (thoroughfare != null) {
      _result.thoroughfare = thoroughfare;
    }
    if (subThoroughfare != null) {
      _result.subThoroughfare = subThoroughfare;
    }
    return _result;
  }
  factory Location_Placemark.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location_Placemark.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location_Placemark clone() => Location_Placemark()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location_Placemark copyWith(void Function(Location_Placemark) updates) => super.copyWith((message) => updates(message as Location_Placemark)) as Location_Placemark; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location_Placemark create() => Location_Placemark._();
  Location_Placemark createEmptyInstance() => create();
  static $pb.PbList<Location_Placemark> createRepeated() => $pb.PbList<Location_Placemark>();
  @$core.pragma('dart2js:noInline')
  static Location_Placemark getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location_Placemark>(create);
  static Location_Placemark? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get street => $_getSZ(1);
  @$pb.TagNumber(2)
  set street($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStreet() => $_has(1);
  @$pb.TagNumber(2)
  void clearStreet() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get isoCountryCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set isoCountryCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsoCountryCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsoCountryCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get country => $_getSZ(3);
  @$pb.TagNumber(4)
  set country($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountry() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountry() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get postalCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set postalCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPostalCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearPostalCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get administrativeArea => $_getSZ(5);
  @$pb.TagNumber(6)
  set administrativeArea($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAdministrativeArea() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdministrativeArea() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get subAdministrativeArea => $_getSZ(6);
  @$pb.TagNumber(7)
  set subAdministrativeArea($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSubAdministrativeArea() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubAdministrativeArea() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get locality => $_getSZ(7);
  @$pb.TagNumber(8)
  set locality($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLocality() => $_has(7);
  @$pb.TagNumber(8)
  void clearLocality() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get subLocality => $_getSZ(8);
  @$pb.TagNumber(9)
  set subLocality($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSubLocality() => $_has(8);
  @$pb.TagNumber(9)
  void clearSubLocality() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get thoroughfare => $_getSZ(9);
  @$pb.TagNumber(10)
  set thoroughfare($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasThoroughfare() => $_has(9);
  @$pb.TagNumber(10)
  void clearThoroughfare() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get subThoroughfare => $_getSZ(10);
  @$pb.TagNumber(11)
  set subThoroughfare($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSubThoroughfare() => $_has(10);
  @$pb.TagNumber(11)
  void clearSubThoroughfare() => clearField(11);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OD)
    ..aOM<Location_Placemark>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placemark', subBuilder: Location_Placemark.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModified', protoName: 'lastModified')
    ..hasRequiredFields = false
  ;

  Location._() : super();
  factory Location({
    $core.double? latitude,
    $core.double? longitude,
    Location_Placemark? placemark,
    $fixnum.Int64? lastModified,
  }) {
    final _result = create();
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (placemark != null) {
      _result.placemark = placemark;
    }
    if (lastModified != null) {
      _result.lastModified = lastModified;
    }
    return _result;
  }
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);

  @$pb.TagNumber(3)
  Location_Placemark get placemark => $_getN(2);
  @$pb.TagNumber(3)
  set placemark(Location_Placemark v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlacemark() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlacemark() => clearField(3);
  @$pb.TagNumber(3)
  Location_Placemark ensurePlacemark() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastModified => $_getI64(3);
  @$pb.TagNumber(4)
  set lastModified($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastModified() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastModified() => clearField(4);
}

class Metadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Metadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeId', protoName: 'nodeId')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  Metadata._() : super();
  factory Metadata({
    $fixnum.Int64? timestamp,
    $core.String? nodeId,
    $core.List<$core.int>? signature,
    $core.List<$core.int>? publicKey,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (nodeId != null) {
      _result.nodeId = nodeId;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory Metadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get signature => $_getN(2);
  @$pb.TagNumber(3)
  set signature($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSignature() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignature() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get publicKey => $_getN(3);
  @$pb.TagNumber(4)
  set publicKey($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class MIME extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MIME', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..e<MIME_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MIME_Type.OTHER, valueOf: MIME_Type.valueOf, enumValues: MIME_Type.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subtype')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  MIME._() : super();
  factory MIME({
    MIME_Type? type,
    $core.String? subtype,
    $core.String? value,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (subtype != null) {
      _result.subtype = subtype;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory MIME.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MIME.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MIME clone() => MIME()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MIME copyWith(void Function(MIME) updates) => super.copyWith((message) => updates(message as MIME)) as MIME; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MIME create() => MIME._();
  MIME createEmptyInstance() => create();
  static $pb.PbList<MIME> createRepeated() => $pb.PbList<MIME>();
  @$core.pragma('dart2js:noInline')
  static MIME getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MIME>(create);
  static MIME? _defaultInstance;

  @$pb.TagNumber(1)
  MIME_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(MIME_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subtype => $_getSZ(1);
  @$pb.TagNumber(2)
  set subtype($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtype() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtype() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class Peer_Device extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Peer.Device', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostName', protoName: 'hostName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'os')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arch')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model')
    ..hasRequiredFields = false
  ;

  Peer_Device._() : super();
  factory Peer_Device({
    $core.String? id,
    $core.String? hostName,
    $core.String? os,
    $core.String? arch,
    $core.String? model,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (hostName != null) {
      _result.hostName = hostName;
    }
    if (os != null) {
      _result.os = os;
    }
    if (arch != null) {
      _result.arch = arch;
    }
    if (model != null) {
      _result.model = model;
    }
    return _result;
  }
  factory Peer_Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Peer_Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Peer_Device clone() => Peer_Device()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Peer_Device copyWith(void Function(Peer_Device) updates) => super.copyWith((message) => updates(message as Peer_Device)) as Peer_Device; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Peer_Device create() => Peer_Device._();
  Peer_Device createEmptyInstance() => create();
  static $pb.PbList<Peer_Device> createRepeated() => $pb.PbList<Peer_Device>();
  @$core.pragma('dart2js:noInline')
  static Peer_Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Peer_Device>(create);
  static Peer_Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hostName => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHostName() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get os => $_getSZ(2);
  @$pb.TagNumber(3)
  set os($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOs() => $_has(2);
  @$pb.TagNumber(3)
  void clearOs() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get arch => $_getSZ(3);
  @$pb.TagNumber(4)
  set arch($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasArch() => $_has(3);
  @$pb.TagNumber(4)
  void clearArch() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get model => $_getSZ(4);
  @$pb.TagNumber(5)
  set model($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModel() => $_has(4);
  @$pb.TagNumber(5)
  void clearModel() => clearField(5);
}

class Peer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Peer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..e<Peer_Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Peer_Status.OFFLINE, valueOf: Peer_Status.valueOf, enumValues: Peer_Status.values)
    ..aOM<Peer_Device>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'device', subBuilder: Peer_Device.create)
    ..aOM<Profile>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: Profile.create)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerID', protoName: 'peerID')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModified', protoName: 'lastModified')
    ..hasRequiredFields = false
  ;

  Peer._() : super();
  factory Peer({
    $core.String? sName,
    Peer_Status? status,
    Peer_Device? device,
    Profile? profile,
    $core.List<$core.int>? publicKey,
    $core.String? peerID,
    $fixnum.Int64? lastModified,
  }) {
    final _result = create();
    if (sName != null) {
      _result.sName = sName;
    }
    if (status != null) {
      _result.status = status;
    }
    if (device != null) {
      _result.device = device;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (peerID != null) {
      _result.peerID = peerID;
    }
    if (lastModified != null) {
      _result.lastModified = lastModified;
    }
    return _result;
  }
  factory Peer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Peer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Peer clone() => Peer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Peer copyWith(void Function(Peer) updates) => super.copyWith((message) => updates(message as Peer)) as Peer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Peer create() => Peer._();
  Peer createEmptyInstance() => create();
  static $pb.PbList<Peer> createRepeated() => $pb.PbList<Peer>();
  @$core.pragma('dart2js:noInline')
  static Peer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Peer>(create);
  static Peer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSName() => clearField(1);

  @$pb.TagNumber(2)
  Peer_Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(Peer_Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  Peer_Device get device => $_getN(2);
  @$pb.TagNumber(3)
  set device(Peer_Device v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearDevice() => clearField(3);
  @$pb.TagNumber(3)
  Peer_Device ensureDevice() => $_ensure(2);

  @$pb.TagNumber(4)
  Profile get profile => $_getN(3);
  @$pb.TagNumber(4)
  set profile(Profile v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfile() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfile() => clearField(4);
  @$pb.TagNumber(4)
  Profile ensureProfile() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get publicKey => $_getN(4);
  @$pb.TagNumber(5)
  set publicKey($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPublicKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublicKey() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get peerID => $_getSZ(5);
  @$pb.TagNumber(6)
  set peerID($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPeerID() => $_has(5);
  @$pb.TagNumber(6)
  void clearPeerID() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get lastModified => $_getI64(6);
  @$pb.TagNumber(7)
  set lastModified($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastModified() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastModified() => clearField(7);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Profile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sName', protoName: 'sName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName', protoName: 'firstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName', protoName: 'lastName')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'picture', $pb.PbFieldType.OY)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bio')
    ..pc<Social>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'socials', $pb.PbFieldType.PM, subBuilder: Social.create)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModified', protoName: 'lastModified')
    ..hasRequiredFields = false
  ;

  Profile._() : super();
  factory Profile({
    $core.String? sName,
    $core.String? firstName,
    $core.String? lastName,
    $core.List<$core.int>? picture,
    $core.String? bio,
    $core.Iterable<Social>? socials,
    $fixnum.Int64? lastModified,
  }) {
    final _result = create();
    if (sName != null) {
      _result.sName = sName;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (picture != null) {
      _result.picture = picture;
    }
    if (bio != null) {
      _result.bio = bio;
    }
    if (socials != null) {
      _result.socials.addAll(socials);
    }
    if (lastModified != null) {
      _result.lastModified = lastModified;
    }
    return _result;
  }
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Profile clone() => Profile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile)) as Profile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get picture => $_getN(3);
  @$pb.TagNumber(4)
  set picture($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPicture() => $_has(3);
  @$pb.TagNumber(4)
  void clearPicture() => clearField(4);

  @$pb.TagNumber(6)
  $core.String get bio => $_getSZ(4);
  @$pb.TagNumber(6)
  set bio($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBio() => $_has(4);
  @$pb.TagNumber(6)
  void clearBio() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Social> get socials => $_getList(5);

  @$pb.TagNumber(8)
  $fixnum.Int64 get lastModified => $_getI64(6);
  @$pb.TagNumber(8)
  set lastModified($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastModified() => $_has(6);
  @$pb.TagNumber(8)
  void clearLastModified() => clearField(8);
}

class ProfileList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProfileList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..pc<Profile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profiles', $pb.PbFieldType.PM, subBuilder: Profile.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModified', protoName: 'lastModified')
    ..hasRequiredFields = false
  ;

  ProfileList._() : super();
  factory ProfileList({
    $core.Iterable<Profile>? profiles,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? lastModified,
  }) {
    final _result = create();
    if (profiles != null) {
      _result.profiles.addAll(profiles);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (lastModified != null) {
      _result.lastModified = lastModified;
    }
    return _result;
  }
  factory ProfileList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProfileList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProfileList clone() => ProfileList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProfileList copyWith(void Function(ProfileList) updates) => super.copyWith((message) => updates(message as ProfileList)) as ProfileList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProfileList create() => ProfileList._();
  ProfileList createEmptyInstance() => create();
  static $pb.PbList<ProfileList> createRepeated() => $pb.PbList<ProfileList>();
  @$core.pragma('dart2js:noInline')
  static ProfileList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProfileList>(create);
  static ProfileList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Profile> get profiles => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createdAt => $_getI64(1);
  @$pb.TagNumber(2)
  set createdAt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastModified => $_getI64(2);
  @$pb.TagNumber(3)
  set lastModified($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastModified() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastModified() => clearField(3);
}

class Social extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Social', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'picture', $pb.PbFieldType.OY)
    ..e<Social_Media>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'media', $pb.PbFieldType.OE, defaultOrMaker: Social_Media.OTHER, valueOf: Social_Media.valueOf, enumValues: Social_Media.values)
    ..hasRequiredFields = false
  ;

  Social._() : super();
  factory Social({
    $core.bool? valid,
    $core.String? username,
    $core.String? url,
    $core.List<$core.int>? picture,
    Social_Media? media,
  }) {
    final _result = create();
    if (valid != null) {
      _result.valid = valid;
    }
    if (username != null) {
      _result.username = username;
    }
    if (url != null) {
      _result.url = url;
    }
    if (picture != null) {
      _result.picture = picture;
    }
    if (media != null) {
      _result.media = media;
    }
    return _result;
  }
  factory Social.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Social.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Social clone() => Social()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Social copyWith(void Function(Social) updates) => super.copyWith((message) => updates(message as Social)) as Social; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Social create() => Social._();
  Social createEmptyInstance() => create();
  static $pb.PbList<Social> createRepeated() => $pb.PbList<Social>();
  @$core.pragma('dart2js:noInline')
  static Social getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Social>(create);
  static Social? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get valid => $_getBF(0);
  @$pb.TagNumber(1)
  set valid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearValid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get picture => $_getN(3);
  @$pb.TagNumber(4)
  set picture($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPicture() => $_has(3);
  @$pb.TagNumber(4)
  void clearPicture() => clearField(4);

  @$pb.TagNumber(5)
  Social_Media get media => $_getN(4);
  @$pb.TagNumber(5)
  set media(Social_Media v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMedia() => $_has(4);
  @$pb.TagNumber(5)
  void clearMedia() => clearField(5);
}

class SNID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SNID', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domain')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey', $pb.PbFieldType.OY, protoName: 'pubKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerID', protoName: 'peerID')
    ..hasRequiredFields = false
  ;

  SNID._() : super();
  factory SNID({
    $core.String? domain,
    $core.List<$core.int>? pubKey,
    $core.String? peerID,
  }) {
    final _result = create();
    if (domain != null) {
      _result.domain = domain;
    }
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (peerID != null) {
      _result.peerID = peerID;
    }
    return _result;
  }
  factory SNID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SNID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SNID clone() => SNID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SNID copyWith(void Function(SNID) updates) => super.copyWith((message) => updates(message as SNID)) as SNID; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SNID create() => SNID._();
  SNID createEmptyInstance() => create();
  static $pb.PbList<SNID> createRepeated() => $pb.PbList<SNID>();
  @$core.pragma('dart2js:noInline')
  static SNID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SNID>(create);
  static SNID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domain => $_getSZ(0);
  @$pb.TagNumber(1)
  set domain($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pubKey => $_getN(1);
  @$pb.TagNumber(2)
  set pubKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get peerID => $_getSZ(2);
  @$pb.TagNumber(3)
  set peerID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPeerID() => $_has(2);
  @$pb.TagNumber(3)
  void clearPeerID() => clearField(3);
}

class UUID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UUID', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  UUID._() : super();
  factory UUID({
    $core.List<$core.int>? signature,
    $core.String? value,
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    if (value != null) {
      _result.value = value;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory UUID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UUID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UUID clone() => UUID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UUID copyWith(void Function(UUID) updates) => super.copyWith((message) => updates(message as UUID)) as UUID; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UUID create() => UUID._();
  UUID createEmptyInstance() => create();
  static $pb.PbList<UUID> createRepeated() => $pb.PbList<UUID>();
  @$core.pragma('dart2js:noInline')
  static UUID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UUID>(create);
  static UUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
}

