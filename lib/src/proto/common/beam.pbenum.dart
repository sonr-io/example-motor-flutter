///
//  Generated code. Do not modify.
//  source: proto/common/beam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class EventType extends $pb.ProtobufEnum {
  static const EventType NONE = EventType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const EventType GET = EventType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET');
  static const EventType SET = EventType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SET');
  static const EventType DELETE = EventType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DELETE');
  static const EventType PUT = EventType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PUT');
  static const EventType SYNC = EventType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC');

  static const $core.List<EventType> values = <EventType> [
    NONE,
    GET,
    SET,
    DELETE,
    PUT,
    SYNC,
  ];

  static final $core.Map<$core.int, EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EventType? valueOf($core.int value) => _byValue[value];

  const EventType._($core.int v, $core.String n) : super(v, n);
}

