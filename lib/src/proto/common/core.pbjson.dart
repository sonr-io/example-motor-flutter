///
//  Generated code. Do not modify.
//  source: proto/common/core.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use connectionDescriptor instead')
const Connection$json = const {
  '1': 'Connection',
  '2': const [
    const {'1': 'WIFI', '2': 0},
    const {'1': 'ETHERNET', '2': 1},
    const {'1': 'MOBILE', '2': 2},
    const {'1': 'OFFLINE', '2': 3},
  ],
};

/// Descriptor for `Connection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List connectionDescriptor = $convert.base64Decode('CgpDb25uZWN0aW9uEggKBFdJRkkQABIMCghFVEhFUk5FVBABEgoKBk1PQklMRRACEgsKB09GRkxJTkUQAw==');
@$core.Deprecated('Use environmentDescriptor instead')
const Environment$json = const {
  '1': 'Environment',
  '2': const [
    const {'1': 'DEVELOPMENT', '2': 0},
    const {'1': 'PRODUCTION', '2': 1},
  ],
};

/// Descriptor for `Environment`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List environmentDescriptor = $convert.base64Decode('CgtFbnZpcm9ubWVudBIPCgtERVZFTE9QTUVOVBAAEg4KClBST0RVQ1RJT04QAQ==');
@$core.Deprecated('Use locationDescriptor instead')
const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 1, '10': 'longitude'},
    const {'1': 'placemark', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Location.Placemark', '10': 'placemark'},
    const {'1': 'lastModified', '3': 4, '4': 1, '5': 3, '10': 'lastModified'},
  ],
  '3': const [Location_Placemark$json],
};

@$core.Deprecated('Use locationDescriptor instead')
const Location_Placemark$json = const {
  '1': 'Placemark',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'street', '3': 2, '4': 1, '5': 9, '10': 'street'},
    const {'1': 'isoCountryCode', '3': 3, '4': 1, '5': 9, '10': 'isoCountryCode'},
    const {'1': 'country', '3': 4, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'postalCode', '3': 5, '4': 1, '5': 9, '10': 'postalCode'},
    const {'1': 'administrativeArea', '3': 6, '4': 1, '5': 9, '10': 'administrativeArea'},
    const {'1': 'subAdministrativeArea', '3': 7, '4': 1, '5': 9, '10': 'subAdministrativeArea'},
    const {'1': 'locality', '3': 8, '4': 1, '5': 9, '10': 'locality'},
    const {'1': 'subLocality', '3': 9, '4': 1, '5': 9, '10': 'subLocality'},
    const {'1': 'thoroughfare', '3': 10, '4': 1, '5': 9, '10': 'thoroughfare'},
    const {'1': 'subThoroughfare', '3': 11, '4': 1, '5': 9, '10': 'subThoroughfare'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode('CghMb2NhdGlvbhIaCghsYXRpdHVkZRgBIAEoAVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAIgASgBUglsb25naXR1ZGUSOwoJcGxhY2VtYXJrGAMgASgLMh0uc29uci5jb3JlLkxvY2F0aW9uLlBsYWNlbWFya1IJcGxhY2VtYXJrEiIKDGxhc3RNb2RpZmllZBgEIAEoA1IMbGFzdE1vZGlmaWVkGosDCglQbGFjZW1hcmsSEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZzdHJlZXQYAiABKAlSBnN0cmVldBImCg5pc29Db3VudHJ5Q29kZRgDIAEoCVIOaXNvQ291bnRyeUNvZGUSGAoHY291bnRyeRgEIAEoCVIHY291bnRyeRIeCgpwb3N0YWxDb2RlGAUgASgJUgpwb3N0YWxDb2RlEi4KEmFkbWluaXN0cmF0aXZlQXJlYRgGIAEoCVISYWRtaW5pc3RyYXRpdmVBcmVhEjQKFXN1YkFkbWluaXN0cmF0aXZlQXJlYRgHIAEoCVIVc3ViQWRtaW5pc3RyYXRpdmVBcmVhEhoKCGxvY2FsaXR5GAggASgJUghsb2NhbGl0eRIgCgtzdWJMb2NhbGl0eRgJIAEoCVILc3ViTG9jYWxpdHkSIgoMdGhvcm91Z2hmYXJlGAogASgJUgx0aG9yb3VnaGZhcmUSKAoPc3ViVGhvcm91Z2hmYXJlGAsgASgJUg9zdWJUaG9yb3VnaGZhcmU=');
@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = const {
  '1': 'Metadata',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'nodeId', '3': 2, '4': 1, '5': 9, '10': 'nodeId'},
    const {'1': 'signature', '3': 3, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'publicKey', '3': 4, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode('CghNZXRhZGF0YRIcCgl0aW1lc3RhbXAYASABKANSCXRpbWVzdGFtcBIWCgZub2RlSWQYAiABKAlSBm5vZGVJZBIcCglzaWduYXR1cmUYAyABKAxSCXNpZ25hdHVyZRIcCglwdWJsaWNLZXkYBCABKAxSCXB1YmxpY0tleQ==');
@$core.Deprecated('Use mIMEDescriptor instead')
const MIME$json = const {
  '1': 'MIME',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.sonr.core.MIME.Type', '10': 'type'},
    const {'1': 'subtype', '3': 2, '4': 1, '5': 9, '10': 'subtype'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
  '4': const [MIME_Type$json],
};

@$core.Deprecated('Use mIMEDescriptor instead')
const MIME_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'OTHER', '2': 0},
    const {'1': 'AUDIO', '2': 1},
    const {'1': 'DOCUMENT', '2': 2},
    const {'1': 'IMAGE', '2': 3},
    const {'1': 'TEXT', '2': 4},
    const {'1': 'VIDEO', '2': 5},
    const {'1': 'URL', '2': 6},
  ],
};

/// Descriptor for `MIME`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mIMEDescriptor = $convert.base64Decode('CgRNSU1FEigKBHR5cGUYASABKA4yFC5zb25yLmNvcmUuTUlNRS5UeXBlUgR0eXBlEhgKB3N1YnR5cGUYAiABKAlSB3N1YnR5cGUSFAoFdmFsdWUYAyABKAlSBXZhbHVlIlMKBFR5cGUSCQoFT1RIRVIQABIJCgVBVURJTxABEgwKCERPQ1VNRU5UEAISCQoFSU1BR0UQAxIICgRURVhUEAQSCQoFVklERU8QBRIHCgNVUkwQBg==');
@$core.Deprecated('Use peerDescriptor instead')
const Peer$json = const {
  '1': 'Peer',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.sonr.core.Peer.Status', '10': 'status'},
    const {'1': 'device', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Peer.Device', '10': 'device'},
    const {'1': 'profile', '3': 4, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'publicKey', '3': 5, '4': 1, '5': 12, '10': 'publicKey'},
    const {'1': 'peerID', '3': 6, '4': 1, '5': 9, '10': 'peerID'},
    const {'1': 'lastModified', '3': 7, '4': 1, '5': 3, '10': 'lastModified'},
  ],
  '3': const [Peer_Device$json],
  '4': const [Peer_Status$json],
};

@$core.Deprecated('Use peerDescriptor instead')
const Peer_Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'hostName', '3': 2, '4': 1, '5': 9, '10': 'hostName'},
    const {'1': 'os', '3': 3, '4': 1, '5': 9, '10': 'os'},
    const {'1': 'arch', '3': 4, '4': 1, '5': 9, '10': 'arch'},
    const {'1': 'model', '3': 5, '4': 1, '5': 9, '10': 'model'},
  ],
};

@$core.Deprecated('Use peerDescriptor instead')
const Peer_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'OFFLINE', '2': 0},
    const {'1': 'ONLINE', '2': 1},
    const {'1': 'AWAY', '2': 2},
    const {'1': 'BUSY', '2': 3},
  ],
};

/// Descriptor for `Peer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerDescriptor = $convert.base64Decode('CgRQZWVyEhQKBXNOYW1lGAEgASgJUgVzTmFtZRIuCgZzdGF0dXMYAiABKA4yFi5zb25yLmNvcmUuUGVlci5TdGF0dXNSBnN0YXR1cxIuCgZkZXZpY2UYAyABKAsyFi5zb25yLmNvcmUuUGVlci5EZXZpY2VSBmRldmljZRIsCgdwcm9maWxlGAQgASgLMhIuc29uci5jb3JlLlByb2ZpbGVSB3Byb2ZpbGUSHAoJcHVibGljS2V5GAUgASgMUglwdWJsaWNLZXkSFgoGcGVlcklEGAYgASgJUgZwZWVySUQSIgoMbGFzdE1vZGlmaWVkGAcgASgDUgxsYXN0TW9kaWZpZWQabgoGRGV2aWNlEg4KAmlkGAEgASgJUgJpZBIaCghob3N0TmFtZRgCIAEoCVIIaG9zdE5hbWUSDgoCb3MYAyABKAlSAm9zEhIKBGFyY2gYBCABKAlSBGFyY2gSFAoFbW9kZWwYBSABKAlSBW1vZGVsIjUKBlN0YXR1cxILCgdPRkZMSU5FEAASCgoGT05MSU5FEAESCAoEQVdBWRACEggKBEJVU1kQAw==');
@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'firstName', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'picture', '3': 4, '4': 1, '5': 12, '10': 'picture'},
    const {'1': 'bio', '3': 6, '4': 1, '5': 9, '10': 'bio'},
    const {'1': 'socials', '3': 7, '4': 3, '5': 11, '6': '.sonr.core.Social', '10': 'socials'},
    const {'1': 'lastModified', '3': 8, '4': 1, '5': 3, '10': 'lastModified'},
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode('CgdQcm9maWxlEhQKBXNOYW1lGAEgASgJUgVzTmFtZRIcCglmaXJzdE5hbWUYAiABKAlSCWZpcnN0TmFtZRIaCghsYXN0TmFtZRgDIAEoCVIIbGFzdE5hbWUSGAoHcGljdHVyZRgEIAEoDFIHcGljdHVyZRIQCgNiaW8YBiABKAlSA2JpbxIrCgdzb2NpYWxzGAcgAygLMhEuc29uci5jb3JlLlNvY2lhbFIHc29jaWFscxIiCgxsYXN0TW9kaWZpZWQYCCABKANSDGxhc3RNb2RpZmllZA==');
@$core.Deprecated('Use profileListDescriptor instead')
const ProfileList$json = const {
  '1': 'ProfileList',
  '2': const [
    const {'1': 'profiles', '3': 1, '4': 3, '5': 11, '6': '.sonr.core.Profile', '10': 'profiles'},
    const {'1': 'createdAt', '3': 2, '4': 1, '5': 3, '10': 'createdAt'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'lastModified', '3': 4, '4': 1, '5': 3, '10': 'lastModified'},
  ],
};

/// Descriptor for `ProfileList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileListDescriptor = $convert.base64Decode('CgtQcm9maWxlTGlzdBIuCghwcm9maWxlcxgBIAMoCzISLnNvbnIuY29yZS5Qcm9maWxlUghwcm9maWxlcxIcCgljcmVhdGVkQXQYAiABKANSCWNyZWF0ZWRBdBIQCgNrZXkYAyABKAlSA2tleRIiCgxsYXN0TW9kaWZpZWQYBCABKANSDGxhc3RNb2RpZmllZA==');
@$core.Deprecated('Use socialDescriptor instead')
const Social$json = const {
  '1': 'Social',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'picture', '3': 4, '4': 1, '5': 12, '10': 'picture'},
    const {'1': 'media', '3': 5, '4': 1, '5': 14, '6': '.sonr.core.Social.Media', '10': 'media'},
  ],
  '4': const [Social_Media$json],
};

@$core.Deprecated('Use socialDescriptor instead')
const Social_Media$json = const {
  '1': 'Media',
  '2': const [
    const {'1': 'OTHER', '2': 0},
    const {'1': 'FACEBOOK', '2': 1},
    const {'1': 'TWITTER', '2': 2},
    const {'1': 'MEDIUM', '2': 3},
    const {'1': 'TIKTOK', '2': 4},
    const {'1': 'INSTAGRAM', '2': 5},
    const {'1': 'YOUTUBE', '2': 6},
    const {'1': 'GITHUB', '2': 7},
    const {'1': 'SNAPCHAT', '2': 8},
    const {'1': 'SPOTIFY', '2': 9},
  ],
};

/// Descriptor for `Social`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List socialDescriptor = $convert.base64Decode('CgZTb2NpYWwSFAoFdmFsaWQYASABKAhSBXZhbGlkEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIQCgN1cmwYAyABKAlSA3VybBIYCgdwaWN0dXJlGAQgASgMUgdwaWN0dXJlEi0KBW1lZGlhGAUgASgOMhcuc29uci5jb3JlLlNvY2lhbC5NZWRpYVIFbWVkaWEiiAEKBU1lZGlhEgkKBU9USEVSEAASDAoIRkFDRUJPT0sQARILCgdUV0lUVEVSEAISCgoGTUVESVVNEAMSCgoGVElLVE9LEAQSDQoJSU5TVEFHUkFNEAUSCwoHWU9VVFVCRRAGEgoKBkdJVEhVQhAHEgwKCFNOQVBDSEFUEAgSCwoHU1BPVElGWRAJ');
@$core.Deprecated('Use sNIDDescriptor instead')
const SNID$json = const {
  '1': 'SNID',
  '2': const [
    const {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    const {'1': 'pubKey', '3': 2, '4': 1, '5': 12, '10': 'pubKey'},
    const {'1': 'peerID', '3': 3, '4': 1, '5': 9, '10': 'peerID'},
    const {'1': 'cid', '3': 4, '4': 1, '5': 9, '10': 'cid'},
  ],
};

/// Descriptor for `SNID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sNIDDescriptor = $convert.base64Decode('CgRTTklEEhYKBmRvbWFpbhgBIAEoCVIGZG9tYWluEhYKBnB1YktleRgCIAEoDFIGcHViS2V5EhYKBnBlZXJJRBgDIAEoCVIGcGVlcklEEhAKA2NpZBgEIAEoCVIDY2lk');
@$core.Deprecated('Use uUIDDescriptor instead')
const UUID$json = const {
  '1': 'UUID',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
  ],
};

/// Descriptor for `UUID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uUIDDescriptor = $convert.base64Decode('CgRVVUlEEhwKCXNpZ25hdHVyZRgBIAEoDFIJc2lnbmF0dXJlEhQKBXZhbHVlGAIgASgJUgV2YWx1ZRIcCgl0aW1lc3RhbXAYAyABKANSCXRpbWVzdGFtcA==');
