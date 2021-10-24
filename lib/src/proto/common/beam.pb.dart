///
//  Generated code. Do not modify.
//  source: proto/common/beam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'beam.pbenum.dart';

export 'beam.pbenum.dart';

class Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Event', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.beam'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer')
    ..e<EventType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: EventType.NONE, valueOf: EventType.valueOf, enumValues: EventType.values)
    ..aOM<StoreEntry>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entry', subBuilder: StoreEntry.create)
    ..aOM<Store>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'store', subBuilder: Store.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event({
    $core.String? peer,
    EventType? type,
    StoreEntry? entry,
    Store? store,
  }) {
    final _result = create();
    if (peer != null) {
      _result.peer = peer;
    }
    if (type != null) {
      _result.type = type;
    }
    if (entry != null) {
      _result.entry = entry;
    }
    if (store != null) {
      _result.store = store;
    }
    return _result;
  }
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get peer => $_getSZ(0);
  @$pb.TagNumber(1)
  set peer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => clearField(1);

  @$pb.TagNumber(2)
  EventType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(EventType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  StoreEntry get entry => $_getN(2);
  @$pb.TagNumber(3)
  set entry(StoreEntry v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEntry() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntry() => clearField(3);
  @$pb.TagNumber(3)
  StoreEntry ensureEntry() => $_ensure(2);

  @$pb.TagNumber(4)
  Store get store => $_getN(3);
  @$pb.TagNumber(4)
  set store(Store v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStore() => $_has(3);
  @$pb.TagNumber(4)
  void clearStore() => clearField(4);
  @$pb.TagNumber(4)
  Store ensureStore() => $_ensure(3);
}

class Store extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Store', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.beam'), createEmptyInstance: create)
    ..m<$core.String, StoreEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', entryClassName: 'Store.DataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: StoreEntry.create, packageName: const $pb.PackageName('sonr.beam'))
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capacity', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modified')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ttl')
    ..hasRequiredFields = false
  ;

  Store._() : super();
  factory Store({
    $core.Map<$core.String, StoreEntry>? data,
    $core.int? capacity,
    $fixnum.Int64? modified,
    $fixnum.Int64? ttl,
  }) {
    final _result = create();
    if (data != null) {
      _result.data.addAll(data);
    }
    if (capacity != null) {
      _result.capacity = capacity;
    }
    if (modified != null) {
      _result.modified = modified;
    }
    if (ttl != null) {
      _result.ttl = ttl;
    }
    return _result;
  }
  factory Store.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Store.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Store clone() => Store()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Store copyWith(void Function(Store) updates) => super.copyWith((message) => updates(message as Store)) as Store; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Store create() => Store._();
  Store createEmptyInstance() => create();
  static $pb.PbList<Store> createRepeated() => $pb.PbList<Store>();
  @$core.pragma('dart2js:noInline')
  static Store getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Store>(create);
  static Store? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, StoreEntry> get data => $_getMap(0);

  @$pb.TagNumber(2)
  $core.int get capacity => $_getIZ(1);
  @$pb.TagNumber(2)
  set capacity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCapacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapacity() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get modified => $_getI64(2);
  @$pb.TagNumber(3)
  set modified($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasModified() => $_has(2);
  @$pb.TagNumber(3)
  void clearModified() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get ttl => $_getI64(3);
  @$pb.TagNumber(4)
  set ttl($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearTtl() => clearField(4);
}

class StoreEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.beam'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiration')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modified')
    ..hasRequiredFields = false
  ;

  StoreEntry._() : super();
  factory StoreEntry({
    $core.String? peer,
    $core.String? key,
    $core.List<$core.int>? value,
    $fixnum.Int64? expiration,
    $fixnum.Int64? created,
    $fixnum.Int64? modified,
  }) {
    final _result = create();
    if (peer != null) {
      _result.peer = peer;
    }
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (expiration != null) {
      _result.expiration = expiration;
    }
    if (created != null) {
      _result.created = created;
    }
    if (modified != null) {
      _result.modified = modified;
    }
    return _result;
  }
  factory StoreEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreEntry clone() => StoreEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreEntry copyWith(void Function(StoreEntry) updates) => super.copyWith((message) => updates(message as StoreEntry)) as StoreEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreEntry create() => StoreEntry._();
  StoreEntry createEmptyInstance() => create();
  static $pb.PbList<StoreEntry> createRepeated() => $pb.PbList<StoreEntry>();
  @$core.pragma('dart2js:noInline')
  static StoreEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreEntry>(create);
  static StoreEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get peer => $_getSZ(0);
  @$pb.TagNumber(1)
  set peer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get expiration => $_getI64(3);
  @$pb.TagNumber(4)
  set expiration($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiration() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiration() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get created => $_getI64(4);
  @$pb.TagNumber(5)
  set created($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreated() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreated() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get modified => $_getI64(5);
  @$pb.TagNumber(6)
  set modified($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasModified() => $_has(5);
  @$pb.TagNumber(6)
  void clearModified() => clearField(6);
}

