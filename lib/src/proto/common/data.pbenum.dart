///
//  Generated code. Do not modify.
//  source: proto/common/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Direction extends $pb.ProtobufEnum {
  static const Direction DEFAULT = Direction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEFAULT');
  static const Direction INCOMING = Direction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCOMING');
  static const Direction OUTGOING = Direction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OUTGOING');

  static const $core.List<Direction> values = <Direction> [
    DEFAULT,
    INCOMING,
    OUTGOING,
  ];

  static final $core.Map<$core.int, Direction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Direction? valueOf($core.int value) => _byValue[value];

  const Direction._($core.int v, $core.String n) : super(v, n);
}

class OpenGraph_Type extends $pb.ProtobufEnum {
  static const OpenGraph_Type IMAGE = OpenGraph_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IMAGE');
  static const OpenGraph_Type VIDEO = OpenGraph_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIDEO');
  static const OpenGraph_Type TWITTER = OpenGraph_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TWITTER');
  static const OpenGraph_Type AUDIO = OpenGraph_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUDIO');
  static const OpenGraph_Type NONE = OpenGraph_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');

  static const $core.List<OpenGraph_Type> values = <OpenGraph_Type> [
    IMAGE,
    VIDEO,
    TWITTER,
    AUDIO,
    NONE,
  ];

  static final $core.Map<$core.int, OpenGraph_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OpenGraph_Type? valueOf($core.int value) => _byValue[value];

  const OpenGraph_Type._($core.int v, $core.String n) : super(v, n);
}

