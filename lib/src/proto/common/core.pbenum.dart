///
//  Generated code. Do not modify.
//  source: proto/common/core.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Connection extends $pb.ProtobufEnum {
  static const Connection WIFI = Connection._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI');
  static const Connection ETHERNET = Connection._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ETHERNET');
  static const Connection MOBILE = Connection._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MOBILE');
  static const Connection OFFLINE = Connection._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OFFLINE');

  static const $core.List<Connection> values = <Connection> [
    WIFI,
    ETHERNET,
    MOBILE,
    OFFLINE,
  ];

  static final $core.Map<$core.int, Connection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Connection? valueOf($core.int value) => _byValue[value];

  const Connection._($core.int v, $core.String n) : super(v, n);
}

class Environment extends $pb.ProtobufEnum {
  static const Environment DEVELOPMENT = Environment._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEVELOPMENT');
  static const Environment PRODUCTION = Environment._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRODUCTION');

  static const $core.List<Environment> values = <Environment> [
    DEVELOPMENT,
    PRODUCTION,
  ];

  static final $core.Map<$core.int, Environment> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Environment? valueOf($core.int value) => _byValue[value];

  const Environment._($core.int v, $core.String n) : super(v, n);
}

class MIME_Type extends $pb.ProtobufEnum {
  static const MIME_Type OTHER = MIME_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OTHER');
  static const MIME_Type AUDIO = MIME_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUDIO');
  static const MIME_Type DOCUMENT = MIME_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOCUMENT');
  static const MIME_Type IMAGE = MIME_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IMAGE');
  static const MIME_Type TEXT = MIME_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');
  static const MIME_Type VIDEO = MIME_Type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIDEO');
  static const MIME_Type URL = MIME_Type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'URL');

  static const $core.List<MIME_Type> values = <MIME_Type> [
    OTHER,
    AUDIO,
    DOCUMENT,
    IMAGE,
    TEXT,
    VIDEO,
    URL,
  ];

  static final $core.Map<$core.int, MIME_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MIME_Type? valueOf($core.int value) => _byValue[value];

  const MIME_Type._($core.int v, $core.String n) : super(v, n);
}

class Peer_Status extends $pb.ProtobufEnum {
  static const Peer_Status OFFLINE = Peer_Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OFFLINE');
  static const Peer_Status ONLINE = Peer_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ONLINE');
  static const Peer_Status AWAY = Peer_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AWAY');
  static const Peer_Status BUSY = Peer_Status._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUSY');

  static const $core.List<Peer_Status> values = <Peer_Status> [
    OFFLINE,
    ONLINE,
    AWAY,
    BUSY,
  ];

  static final $core.Map<$core.int, Peer_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Peer_Status? valueOf($core.int value) => _byValue[value];

  const Peer_Status._($core.int v, $core.String n) : super(v, n);
}

class Social_Media extends $pb.ProtobufEnum {
  static const Social_Media OTHER = Social_Media._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OTHER');
  static const Social_Media FACEBOOK = Social_Media._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FACEBOOK');
  static const Social_Media TWITTER = Social_Media._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TWITTER');
  static const Social_Media MEDIUM = Social_Media._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MEDIUM');
  static const Social_Media TIKTOK = Social_Media._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TIKTOK');
  static const Social_Media INSTAGRAM = Social_Media._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INSTAGRAM');
  static const Social_Media YOUTUBE = Social_Media._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'YOUTUBE');
  static const Social_Media GITHUB = Social_Media._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GITHUB');
  static const Social_Media SNAPCHAT = Social_Media._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SNAPCHAT');
  static const Social_Media SPOTIFY = Social_Media._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPOTIFY');

  static const $core.List<Social_Media> values = <Social_Media> [
    OTHER,
    FACEBOOK,
    TWITTER,
    MEDIUM,
    TIKTOK,
    INSTAGRAM,
    YOUTUBE,
    GITHUB,
    SNAPCHAT,
    SPOTIFY,
  ];

  static final $core.Map<$core.int, Social_Media> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Social_Media? valueOf($core.int value) => _byValue[value];

  const Social_Media._($core.int v, $core.String n) : super(v, n);
}

