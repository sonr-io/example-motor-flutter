///
//  Generated code. Do not modify.
//  source: proto/common/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CompleteEvent_Direction extends $pb.ProtobufEnum {
  static const CompleteEvent_Direction DEFAULT = CompleteEvent_Direction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEFAULT');
  static const CompleteEvent_Direction INCOMING = CompleteEvent_Direction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCOMING');
  static const CompleteEvent_Direction OUTGOING = CompleteEvent_Direction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OUTGOING');

  static const $core.List<CompleteEvent_Direction> values = <CompleteEvent_Direction> [
    DEFAULT,
    INCOMING,
    OUTGOING,
  ];

  static final $core.Map<$core.int, CompleteEvent_Direction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CompleteEvent_Direction? valueOf($core.int value) => _byValue[value];

  const CompleteEvent_Direction._($core.int v, $core.String n) : super(v, n);
}

