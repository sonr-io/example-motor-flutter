///
//  Generated code. Do not modify.
//  source: proto/node/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class InitializeRequest_IPAddress_Family extends $pb.ProtobufEnum {
  static const InitializeRequest_IPAddress_Family IPV4 = InitializeRequest_IPAddress_Family._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IPV4');
  static const InitializeRequest_IPAddress_Family IPV6 = InitializeRequest_IPAddress_Family._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IPV6');

  static const $core.List<InitializeRequest_IPAddress_Family> values = <InitializeRequest_IPAddress_Family> [
    IPV4,
    IPV6,
  ];

  static final $core.Map<$core.int, InitializeRequest_IPAddress_Family> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InitializeRequest_IPAddress_Family? valueOf($core.int value) => _byValue[value];

  const InitializeRequest_IPAddress_Family._($core.int v, $core.String n) : super(v, n);
}

class InitializeResponse_UserStatus extends $pb.ProtobufEnum {
  static const InitializeResponse_UserStatus RETURNING = InitializeResponse_UserStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RETURNING');
  static const InitializeResponse_UserStatus NEW = InitializeResponse_UserStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NEW');

  static const $core.List<InitializeResponse_UserStatus> values = <InitializeResponse_UserStatus> [
    RETURNING,
    NEW,
  ];

  static final $core.Map<$core.int, InitializeResponse_UserStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InitializeResponse_UserStatus? valueOf($core.int value) => _byValue[value];

  const InitializeResponse_UserStatus._($core.int v, $core.String n) : super(v, n);
}

class DecideRequest_Method extends $pb.ProtobufEnum {
  static const DecideRequest_Method ADD = DecideRequest_Method._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADD');
  static const DecideRequest_Method REMOVE = DecideRequest_Method._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REMOVE');

  static const $core.List<DecideRequest_Method> values = <DecideRequest_Method> [
    ADD,
    REMOVE,
  ];

  static final $core.Map<$core.int, DecideRequest_Method> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DecideRequest_Method? valueOf($core.int value) => _byValue[value];

  const DecideRequest_Method._($core.int v, $core.String n) : super(v, n);
}

