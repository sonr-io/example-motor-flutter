///
//  Generated code. Do not modify.
//  source: proto/api/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/core.pb.dart' as $0;
import '../common/data.pb.dart' as $1;

import '../common/data.pbenum.dart' as $1;

class DecisionEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DecisionEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decision')
    ..aOM<$0.Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $0.Peer.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'received')
    ..hasRequiredFields = false
  ;

  DecisionEvent._() : super();
  factory DecisionEvent({
    $core.bool? decision,
    $0.Peer? from,
    $fixnum.Int64? received,
  }) {
    final _result = create();
    if (decision != null) {
      _result.decision = decision;
    }
    if (from != null) {
      _result.from = from;
    }
    if (received != null) {
      _result.received = received;
    }
    return _result;
  }
  factory DecisionEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DecisionEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DecisionEvent clone() => DecisionEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DecisionEvent copyWith(void Function(DecisionEvent) updates) => super.copyWith((message) => updates(message as DecisionEvent)) as DecisionEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DecisionEvent create() => DecisionEvent._();
  DecisionEvent createEmptyInstance() => create();
  static $pb.PbList<DecisionEvent> createRepeated() => $pb.PbList<DecisionEvent>();
  @$core.pragma('dart2js:noInline')
  static DecisionEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DecisionEvent>(create);
  static DecisionEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get decision => $_getBF(0);
  @$pb.TagNumber(1)
  set decision($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDecision() => $_has(0);
  @$pb.TagNumber(1)
  void clearDecision() => clearField(1);

  @$pb.TagNumber(2)
  $0.Peer get from => $_getN(1);
  @$pb.TagNumber(2)
  set from($0.Peer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);
  @$pb.TagNumber(2)
  $0.Peer ensureFrom() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get received => $_getI64(2);
  @$pb.TagNumber(3)
  set received($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceived() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceived() => clearField(3);
}

class RefreshEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'olc')
    ..pc<$0.Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peers', $pb.PbFieldType.PM, subBuilder: $0.Peer.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'received')
    ..hasRequiredFields = false
  ;

  RefreshEvent._() : super();
  factory RefreshEvent({
    $core.String? olc,
    $core.Iterable<$0.Peer>? peers,
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
  factory RefreshEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshEvent clone() => RefreshEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshEvent copyWith(void Function(RefreshEvent) updates) => super.copyWith((message) => updates(message as RefreshEvent)) as RefreshEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshEvent create() => RefreshEvent._();
  RefreshEvent createEmptyInstance() => create();
  static $pb.PbList<RefreshEvent> createRepeated() => $pb.PbList<RefreshEvent>();
  @$core.pragma('dart2js:noInline')
  static RefreshEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshEvent>(create);
  static RefreshEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get olc => $_getSZ(0);
  @$pb.TagNumber(1)
  set olc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOlc() => $_has(0);
  @$pb.TagNumber(1)
  void clearOlc() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.Peer> get peers => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get received => $_getI64(2);
  @$pb.TagNumber(3)
  set received($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceived() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceived() => clearField(3);
}

class InviteEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InviteEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'received')
    ..aOM<$0.Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $0.Peer.create)
    ..aOM<$1.Payload>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: $1.Payload.create)
    ..hasRequiredFields = false
  ;

  InviteEvent._() : super();
  factory InviteEvent({
    $fixnum.Int64? received,
    $0.Peer? from,
    $1.Payload? payload,
  }) {
    final _result = create();
    if (received != null) {
      _result.received = received;
    }
    if (from != null) {
      _result.from = from;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory InviteEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteEvent clone() => InviteEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteEvent copyWith(void Function(InviteEvent) updates) => super.copyWith((message) => updates(message as InviteEvent)) as InviteEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InviteEvent create() => InviteEvent._();
  InviteEvent createEmptyInstance() => create();
  static $pb.PbList<InviteEvent> createRepeated() => $pb.PbList<InviteEvent>();
  @$core.pragma('dart2js:noInline')
  static InviteEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteEvent>(create);
  static InviteEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get received => $_getI64(0);
  @$pb.TagNumber(1)
  set received($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReceived() => $_has(0);
  @$pb.TagNumber(1)
  void clearReceived() => clearField(1);

  @$pb.TagNumber(2)
  $0.Peer get from => $_getN(1);
  @$pb.TagNumber(2)
  set from($0.Peer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);
  @$pb.TagNumber(2)
  $0.Peer ensureFrom() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Payload get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload($1.Payload v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
  @$pb.TagNumber(3)
  $1.Payload ensurePayload() => $_ensure(2);
}

class MailboxEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MailboxEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buffer', $pb.PbFieldType.OY)
    ..aOM<$0.Profile>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $0.Profile.create)
    ..aOM<$0.Profile>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', subBuilder: $0.Profile.create)
    ..aOM<$0.Metadata>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', subBuilder: $0.Metadata.create)
    ..hasRequiredFields = false
  ;

  MailboxEvent._() : super();
  factory MailboxEvent({
    $core.String? id,
    $core.List<$core.int>? buffer,
    $0.Profile? from,
    $0.Profile? to,
    $0.Metadata? metadata,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (buffer != null) {
      _result.buffer = buffer;
    }
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory MailboxEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MailboxEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MailboxEvent clone() => MailboxEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MailboxEvent copyWith(void Function(MailboxEvent) updates) => super.copyWith((message) => updates(message as MailboxEvent)) as MailboxEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MailboxEvent create() => MailboxEvent._();
  MailboxEvent createEmptyInstance() => create();
  static $pb.PbList<MailboxEvent> createRepeated() => $pb.PbList<MailboxEvent>();
  @$core.pragma('dart2js:noInline')
  static MailboxEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MailboxEvent>(create);
  static MailboxEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get buffer => $_getN(1);
  @$pb.TagNumber(2)
  set buffer($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuffer() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuffer() => clearField(2);

  @$pb.TagNumber(3)
  $0.Profile get from => $_getN(2);
  @$pb.TagNumber(3)
  set from($0.Profile v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);
  @$pb.TagNumber(3)
  $0.Profile ensureFrom() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Profile get to => $_getN(3);
  @$pb.TagNumber(4)
  set to($0.Profile v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);
  @$pb.TagNumber(4)
  $0.Profile ensureTo() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Metadata get metadata => $_getN(4);
  @$pb.TagNumber(5)
  set metadata($0.Metadata v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMetadata() => $_has(4);
  @$pb.TagNumber(5)
  void clearMetadata() => clearField(5);
  @$pb.TagNumber(5)
  $0.Metadata ensureMetadata() => $_ensure(4);
}

class ProgressEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProgressEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'progress', $pb.PbFieldType.OD)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'received')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'total', $pb.PbFieldType.O3)
    ..e<$1.Direction>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: $1.Direction.DEFAULT, valueOf: $1.Direction.valueOf, enumValues: $1.Direction.values)
    ..hasRequiredFields = false
  ;

  ProgressEvent._() : super();
  factory ProgressEvent({
    $core.double? progress,
    $fixnum.Int64? received,
    $core.int? current,
    $core.int? total,
    $1.Direction? direction,
  }) {
    final _result = create();
    if (progress != null) {
      _result.progress = progress;
    }
    if (received != null) {
      _result.received = received;
    }
    if (current != null) {
      _result.current = current;
    }
    if (total != null) {
      _result.total = total;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    return _result;
  }
  factory ProgressEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProgressEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProgressEvent clone() => ProgressEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProgressEvent copyWith(void Function(ProgressEvent) updates) => super.copyWith((message) => updates(message as ProgressEvent)) as ProgressEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProgressEvent create() => ProgressEvent._();
  ProgressEvent createEmptyInstance() => create();
  static $pb.PbList<ProgressEvent> createRepeated() => $pb.PbList<ProgressEvent>();
  @$core.pragma('dart2js:noInline')
  static ProgressEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProgressEvent>(create);
  static ProgressEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get progress => $_getN(0);
  @$pb.TagNumber(1)
  set progress($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProgress() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get received => $_getI64(1);
  @$pb.TagNumber(2)
  set received($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceived() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceived() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get current => $_getIZ(2);
  @$pb.TagNumber(3)
  set current($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrent() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrent() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get total => $_getIZ(3);
  @$pb.TagNumber(4)
  set total($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotal() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotal() => clearField(4);

  @$pb.TagNumber(5)
  $1.Direction get direction => $_getN(4);
  @$pb.TagNumber(5)
  set direction($1.Direction v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDirection() => $_has(4);
  @$pb.TagNumber(5)
  void clearDirection() => clearField(5);
}

class CompleteEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompleteEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.api'), createEmptyInstance: create)
    ..e<$1.Direction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: $1.Direction.DEFAULT, valueOf: $1.Direction.valueOf, enumValues: $1.Direction.values)
    ..aOM<$1.Payload>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: $1.Payload.create)
    ..aOM<$0.Peer>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $0.Peer.create)
    ..aOM<$0.Peer>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', subBuilder: $0.Peer.create)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', protoName: 'receivedAt')
    ..m<$core.int, $core.bool>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', entryClassName: 'CompleteEvent.ResultsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OB, packageName: const $pb.PackageName('sonr.api'))
    ..hasRequiredFields = false
  ;

  CompleteEvent._() : super();
  factory CompleteEvent({
    $1.Direction? direction,
    $1.Payload? payload,
    $0.Peer? from,
    $0.Peer? to,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? receivedAt,
    $core.Map<$core.int, $core.bool>? results,
  }) {
    final _result = create();
    if (direction != null) {
      _result.direction = direction;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (receivedAt != null) {
      _result.receivedAt = receivedAt;
    }
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory CompleteEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompleteEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompleteEvent clone() => CompleteEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompleteEvent copyWith(void Function(CompleteEvent) updates) => super.copyWith((message) => updates(message as CompleteEvent)) as CompleteEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompleteEvent create() => CompleteEvent._();
  CompleteEvent createEmptyInstance() => create();
  static $pb.PbList<CompleteEvent> createRepeated() => $pb.PbList<CompleteEvent>();
  @$core.pragma('dart2js:noInline')
  static CompleteEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompleteEvent>(create);
  static CompleteEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Direction get direction => $_getN(0);
  @$pb.TagNumber(1)
  set direction($1.Direction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirection() => clearField(1);

  @$pb.TagNumber(2)
  $1.Payload get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload($1.Payload v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => clearField(2);
  @$pb.TagNumber(2)
  $1.Payload ensurePayload() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Peer get from => $_getN(2);
  @$pb.TagNumber(3)
  set from($0.Peer v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);
  @$pb.TagNumber(3)
  $0.Peer ensureFrom() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Peer get to => $_getN(3);
  @$pb.TagNumber(4)
  set to($0.Peer v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);
  @$pb.TagNumber(4)
  $0.Peer ensureTo() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get receivedAt => $_getI64(5);
  @$pb.TagNumber(6)
  set receivedAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReceivedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearReceivedAt() => clearField(6);

  @$pb.TagNumber(7)
  $core.Map<$core.int, $core.bool> get results => $_getMap(6);
}

