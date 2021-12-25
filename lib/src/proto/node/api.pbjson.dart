///
//  Generated code. Do not modify.
//  source: proto/node/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest$json = const {
  '1': 'InitializeRequest',
  '2': const [
    const {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.Location', '10': 'location'},
    const {'1': 'profile', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'connection', '3': 3, '4': 1, '5': 14, '6': '.sonr.core.Connection', '10': 'connection'},
    const {'1': 'hostOptions', '3': 4, '4': 1, '5': 11, '6': '.sonr.api.InitializeRequest.HostOptions', '10': 'hostOptions'},
    const {'1': 'serviceOptions', '3': 5, '4': 1, '5': 11, '6': '.sonr.api.InitializeRequest.ServiceOptions', '10': 'serviceOptions'},
    const {'1': 'deviceOptions', '3': 6, '4': 1, '5': 11, '6': '.sonr.api.InitializeRequest.DeviceOptions', '10': 'deviceOptions'},
    const {'1': 'environment', '3': 7, '4': 1, '5': 14, '6': '.sonr.core.Environment', '10': 'environment'},
    const {'1': 'variables', '3': 8, '4': 3, '5': 11, '6': '.sonr.api.InitializeRequest.VariablesEntry', '10': 'variables'},
  ],
  '3': const [InitializeRequest_VariablesEntry$json, InitializeRequest_DeviceOptions$json, InitializeRequest_HostOptions$json, InitializeRequest_ServiceOptions$json, InitializeRequest_IPAddress$json],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_VariablesEntry$json = const {
  '1': 'VariablesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_DeviceOptions$json = const {
  '1': 'DeviceOptions',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'homeDir', '3': 2, '4': 1, '5': 9, '10': 'homeDir'},
    const {'1': 'supportDir', '3': 3, '4': 1, '5': 9, '10': 'supportDir'},
    const {'1': 'tempDir', '3': 4, '4': 1, '5': 9, '10': 'tempDir'},
  ],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_HostOptions$json = const {
  '1': 'HostOptions',
  '2': const [
    const {'1': 'quicTransport', '3': 1, '4': 1, '5': 8, '10': 'quicTransport'},
    const {'1': 'httpTransport', '3': 2, '4': 1, '5': 8, '10': 'httpTransport'},
    const {'1': 'ipv4Only', '3': 3, '4': 1, '5': 8, '10': 'ipv4Only'},
    const {'1': 'listenAddrs', '3': 4, '4': 3, '5': 11, '6': '.sonr.api.InitializeRequest.IPAddress', '10': 'listenAddrs'},
  ],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_ServiceOptions$json = const {
  '1': 'ServiceOptions',
  '2': const [
    const {'1': 'textile', '3': 1, '4': 1, '5': 8, '10': 'textile'},
    const {'1': 'mailbox', '3': 2, '4': 1, '5': 8, '10': 'mailbox'},
    const {'1': 'buckets', '3': 3, '4': 1, '5': 8, '10': 'buckets'},
    const {'1': 'interval', '3': 4, '4': 1, '5': 5, '10': 'interval'},
  ],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_IPAddress$json = const {
  '1': 'IPAddress',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'internal', '3': 3, '4': 1, '5': 8, '10': 'internal'},
    const {'1': 'family', '3': 4, '4': 1, '5': 14, '6': '.sonr.api.InitializeRequest.IPAddress.Family', '10': 'family'},
  ],
  '4': const [InitializeRequest_IPAddress_Family$json],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_IPAddress_Family$json = const {
  '1': 'Family',
  '2': const [
    const {'1': 'IPV4', '2': 0},
    const {'1': 'IPV6', '2': 1},
  ],
};

/// Descriptor for `InitializeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initializeRequestDescriptor = $convert.base64Decode('ChFJbml0aWFsaXplUmVxdWVzdBIvCghsb2NhdGlvbhgBIAEoCzITLnNvbnIuY29yZS5Mb2NhdGlvblIIbG9jYXRpb24SLAoHcHJvZmlsZRgCIAEoCzISLnNvbnIuY29yZS5Qcm9maWxlUgdwcm9maWxlEjUKCmNvbm5lY3Rpb24YAyABKA4yFS5zb25yLmNvcmUuQ29ubmVjdGlvblIKY29ubmVjdGlvbhJJCgtob3N0T3B0aW9ucxgEIAEoCzInLnNvbnIuYXBpLkluaXRpYWxpemVSZXF1ZXN0Lkhvc3RPcHRpb25zUgtob3N0T3B0aW9ucxJSCg5zZXJ2aWNlT3B0aW9ucxgFIAEoCzIqLnNvbnIuYXBpLkluaXRpYWxpemVSZXF1ZXN0LlNlcnZpY2VPcHRpb25zUg5zZXJ2aWNlT3B0aW9ucxJPCg1kZXZpY2VPcHRpb25zGAYgASgLMikuc29uci5hcGkuSW5pdGlhbGl6ZVJlcXVlc3QuRGV2aWNlT3B0aW9uc1INZGV2aWNlT3B0aW9ucxI4CgtlbnZpcm9ubWVudBgHIAEoDjIWLnNvbnIuY29yZS5FbnZpcm9ubWVudFILZW52aXJvbm1lbnQSSAoJdmFyaWFibGVzGAggAygLMiouc29uci5hcGkuSW5pdGlhbGl6ZVJlcXVlc3QuVmFyaWFibGVzRW50cnlSCXZhcmlhYmxlcxo8Cg5WYXJpYWJsZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGnMKDURldmljZU9wdGlvbnMSDgoCaWQYASABKAlSAmlkEhgKB2hvbWVEaXIYAiABKAlSB2hvbWVEaXISHgoKc3VwcG9ydERpchgDIAEoCVIKc3VwcG9ydERpchIYCgd0ZW1wRGlyGAQgASgJUgd0ZW1wRGlyGr4BCgtIb3N0T3B0aW9ucxIkCg1xdWljVHJhbnNwb3J0GAEgASgIUg1xdWljVHJhbnNwb3J0EiQKDWh0dHBUcmFuc3BvcnQYAiABKAhSDWh0dHBUcmFuc3BvcnQSGgoIaXB2NE9ubHkYAyABKAhSCGlwdjRPbmx5EkcKC2xpc3RlbkFkZHJzGAQgAygLMiUuc29uci5hcGkuSW5pdGlhbGl6ZVJlcXVlc3QuSVBBZGRyZXNzUgtsaXN0ZW5BZGRycxp6Cg5TZXJ2aWNlT3B0aW9ucxIYCgd0ZXh0aWxlGAEgASgIUgd0ZXh0aWxlEhgKB21haWxib3gYAiABKAhSB21haWxib3gSGAoHYnVja2V0cxgDIAEoCFIHYnVja2V0cxIaCghpbnRlcnZhbBgEIAEoBVIIaW50ZXJ2YWwauQEKCUlQQWRkcmVzcxISCgRuYW1lGAEgASgJUgRuYW1lEhgKB2FkZHJlc3MYAiABKAlSB2FkZHJlc3MSGgoIaW50ZXJuYWwYAyABKAhSCGludGVybmFsEkQKBmZhbWlseRgEIAEoDjIsLnNvbnIuYXBpLkluaXRpYWxpemVSZXF1ZXN0LklQQWRkcmVzcy5GYW1pbHlSBmZhbWlseSIcCgZGYW1pbHkSCAoESVBWNBAAEggKBElQVjYQAQ==');
@$core.Deprecated('Use initializeResponseDescriptor instead')
const InitializeResponse$json = const {
  '1': 'InitializeResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'profile', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'recents', '3': 4, '4': 3, '5': 11, '6': '.sonr.api.InitializeResponse.RecentsEntry', '10': 'recents'},
    const {'1': 'history', '3': 5, '4': 3, '5': 11, '6': '.sonr.api.InitializeResponse.HistoryEntry', '10': 'history'},
    const {'1': 'userStatus', '3': 6, '4': 1, '5': 14, '6': '.sonr.api.InitializeResponse.UserStatus', '10': 'userStatus'},
  ],
  '3': const [InitializeResponse_RecentsEntry$json, InitializeResponse_HistoryEntry$json],
  '4': const [InitializeResponse_UserStatus$json],
};

@$core.Deprecated('Use initializeResponseDescriptor instead')
const InitializeResponse_RecentsEntry$json = const {
  '1': 'RecentsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.ProfileList', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use initializeResponseDescriptor instead')
const InitializeResponse_HistoryEntry$json = const {
  '1': 'HistoryEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.PayloadList', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use initializeResponseDescriptor instead')
const InitializeResponse_UserStatus$json = const {
  '1': 'UserStatus',
  '2': const [
    const {'1': 'RETURNING', '2': 0},
    const {'1': 'NEW', '2': 1},
  ],
};

/// Descriptor for `InitializeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initializeResponseDescriptor = $convert.base64Decode('ChJJbml0aWFsaXplUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISLAoHcHJvZmlsZRgDIAEoCzISLnNvbnIuY29yZS5Qcm9maWxlUgdwcm9maWxlEkMKB3JlY2VudHMYBCADKAsyKS5zb25yLmFwaS5Jbml0aWFsaXplUmVzcG9uc2UuUmVjZW50c0VudHJ5UgdyZWNlbnRzEkMKB2hpc3RvcnkYBSADKAsyKS5zb25yLmFwaS5Jbml0aWFsaXplUmVzcG9uc2UuSGlzdG9yeUVudHJ5UgdoaXN0b3J5EkcKCnVzZXJTdGF0dXMYBiABKA4yJy5zb25yLmFwaS5Jbml0aWFsaXplUmVzcG9uc2UuVXNlclN0YXR1c1IKdXNlclN0YXR1cxpSCgxSZWNlbnRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSLAoFdmFsdWUYAiABKAsyFi5zb25yLmNvcmUuUHJvZmlsZUxpc3RSBXZhbHVlOgI4ARpSCgxIaXN0b3J5RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSLAoFdmFsdWUYAiABKAsyFi5zb25yLmNvcmUuUGF5bG9hZExpc3RSBXZhbHVlOgI4ASIkCgpVc2VyU3RhdHVzEg0KCVJFVFVSTklORxAAEgcKA05FVxAB');
@$core.Deprecated('Use shareRequestDescriptor instead')
const ShareRequest$json = const {
  '1': 'ShareRequest',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'peer'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.MessageItem', '10': 'message'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.sonr.core.SupplyItem', '10': 'items'},
  ],
};

/// Descriptor for `ShareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareRequestDescriptor = $convert.base64Decode('CgxTaGFyZVJlcXVlc3QSIwoEcGVlchgBIAEoCzIPLnNvbnIuY29yZS5QZWVyUgRwZWVyEjAKB21lc3NhZ2UYAiABKAsyFi5zb25yLmNvcmUuTWVzc2FnZUl0ZW1SB21lc3NhZ2USKwoFaXRlbXMYAyADKAsyFS5zb25yLmNvcmUuU3VwcGx5SXRlbVIFaXRlbXM=');
@$core.Deprecated('Use shareResponseDescriptor instead')
const ShareResponse$json = const {
  '1': 'ShareResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `ShareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareResponseDescriptor = $convert.base64Decode('Cg1TaGFyZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9y');
@$core.Deprecated('Use respondRequestDescriptor instead')
const RespondRequest$json = const {
  '1': 'RespondRequest',
  '2': const [
    const {'1': 'decision', '3': 1, '4': 1, '5': 8, '10': 'decision'},
    const {'1': 'peer', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'peer'},
  ],
};

/// Descriptor for `RespondRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respondRequestDescriptor = $convert.base64Decode('Cg5SZXNwb25kUmVxdWVzdBIaCghkZWNpc2lvbhgBIAEoCFIIZGVjaXNpb24SIwoEcGVlchgCIAEoCzIPLnNvbnIuY29yZS5QZWVyUgRwZWVy');
@$core.Deprecated('Use respondResponseDescriptor instead')
const RespondResponse$json = const {
  '1': 'RespondResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `RespondResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respondResponseDescriptor = $convert.base64Decode('Cg9SZXNwb25kUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3I=');
@$core.Deprecated('Use searchRequestDescriptor instead')
const SearchRequest$json = const {
  '1': 'SearchRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'sName'},
    const {'1': 'peerId', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'peerId'},
  ],
  '8': const [
    const {'1': 'query'},
  ],
};

/// Descriptor for `SearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRequestDescriptor = $convert.base64Decode('Cg1TZWFyY2hSZXF1ZXN0EhYKBXNOYW1lGAEgASgJSABSBXNOYW1lEhgKBnBlZXJJZBgCIAEoCUgAUgZwZWVySWRCBwoFcXVlcnk=');
@$core.Deprecated('Use searchResponseDescriptor instead')
const SearchResponse$json = const {
  '1': 'SearchResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'peer', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'peer'},
    const {'1': 'peerId', '3': 4, '4': 1, '5': 9, '10': 'peerId'},
    const {'1': 'sName', '3': 5, '4': 1, '5': 9, '10': 'sName'},
  ],
};

/// Descriptor for `SearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResponseDescriptor = $convert.base64Decode('Cg5TZWFyY2hSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBWVycm9yGAIgASgJUgVlcnJvchIjCgRwZWVyGAMgASgLMg8uc29uci5jb3JlLlBlZXJSBHBlZXISFgoGcGVlcklkGAQgASgJUgZwZWVySWQSFAoFc05hbWUYBSABKAlSBXNOYW1l');
@$core.Deprecated('Use listPeersRequestDescriptor instead')
const ListPeersRequest$json = const {
  '1': 'ListPeersRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'mnemonic', '3': 2, '4': 1, '5': 9, '10': 'mnemonic'},
    const {'1': 'deviceId', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `ListPeersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPeersRequestDescriptor = $convert.base64Decode('ChBMaXN0UGVlcnNSZXF1ZXN0EhQKBXNOYW1lGAEgASgJUgVzTmFtZRIaCghtbmVtb25pYxgCIAEoCVIIbW5lbW9uaWMSGgoIZGV2aWNlSWQYAyABKAlSCGRldmljZUlk');
@$core.Deprecated('Use listPeersResponseDescriptor instead')
const ListPeersResponse$json = const {
  '1': 'ListPeersResponse',
  '2': const [
    const {'1': 'olc', '3': 1, '4': 1, '5': 9, '10': 'olc'},
    const {'1': 'peers', '3': 2, '4': 3, '5': 11, '6': '.sonr.core.Peer', '10': 'peers'},
    const {'1': 'received', '3': 3, '4': 1, '5': 3, '10': 'received'},
  ],
};

/// Descriptor for `ListPeersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPeersResponseDescriptor = $convert.base64Decode('ChFMaXN0UGVlcnNSZXNwb25zZRIQCgNvbGMYASABKAlSA29sYxIlCgVwZWVycxgCIAMoCzIPLnNvbnIuY29yZS5QZWVyUgVwZWVycxIaCghyZWNlaXZlZBgDIAEoA1IIcmVjZWl2ZWQ=');
@$core.Deprecated('Use decideRequestDescriptor instead')
const DecideRequest$json = const {
  '1': 'DecideRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'mnemonic', '3': 2, '4': 1, '5': 9, '10': 'mnemonic'},
    const {'1': 'deviceId', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'method', '3': 4, '4': 1, '5': 14, '6': '.sonr.api.DecideRequest.Method', '10': 'method'},
  ],
  '4': const [DecideRequest_Method$json],
};

@$core.Deprecated('Use decideRequestDescriptor instead')
const DecideRequest_Method$json = const {
  '1': 'Method',
  '2': const [
    const {'1': 'ADD', '2': 0},
    const {'1': 'REMOVE', '2': 1},
  ],
};

/// Descriptor for `DecideRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decideRequestDescriptor = $convert.base64Decode('Cg1EZWNpZGVSZXF1ZXN0EhQKBXNOYW1lGAEgASgJUgVzTmFtZRIaCghtbmVtb25pYxgCIAEoCVIIbW5lbW9uaWMSGgoIZGV2aWNlSWQYAyABKAlSCGRldmljZUlkEjYKBm1ldGhvZBgEIAEoDjIeLnNvbnIuYXBpLkRlY2lkZVJlcXVlc3QuTWV0aG9kUgZtZXRob2QiHQoGTWV0aG9kEgcKA0FERBAAEgoKBlJFTU9WRRAB');
@$core.Deprecated('Use decideResponseDescriptor instead')
const DecideResponse$json = const {
  '1': 'DecideResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.DecideResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [DecideResponse_RecordsEntry$json],
};

@$core.Deprecated('Use decideResponseDescriptor instead')
const DecideResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `DecideResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decideResponseDescriptor = $convert.base64Decode('Cg5EZWNpZGVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBWVycm9yGAIgASgJUgVlcnJvchI/CgdyZWNvcmRzGAMgAygLMiUuc29uci5hcGkuRGVjaWRlUmVzcG9uc2UuUmVjb3Jkc0VudHJ5UgdyZWNvcmRzGjoKDFJlY29yZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use sendRequestDescriptor instead')
const SendRequest$json = const {
  '1': 'SendRequest',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'peer'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.MessageItem', '10': 'message'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.sonr.core.SupplyItem', '10': 'items'},
  ],
};

/// Descriptor for `SendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendRequestDescriptor = $convert.base64Decode('CgtTZW5kUmVxdWVzdBIjCgRwZWVyGAEgASgLMg8uc29uci5jb3JlLlBlZXJSBHBlZXISMAoHbWVzc2FnZRgCIAEoCzIWLnNvbnIuY29yZS5NZXNzYWdlSXRlbVIHbWVzc2FnZRIrCgVpdGVtcxgDIAMoCzIVLnNvbnIuY29yZS5TdXBwbHlJdGVtUgVpdGVtcw==');
@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse$json = const {
  '1': 'SendResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `SendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendResponseDescriptor = $convert.base64Decode('CgxTZW5kUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3I=');
@$core.Deprecated('Use cacheRecordRequestDescriptor instead')
const CacheRecordRequest$json = const {
  '1': 'CacheRecordRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
    const {'1': 'fingerprint', '3': 3, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'publicKey', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `CacheRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cacheRecordRequestDescriptor = $convert.base64Decode('ChJDYWNoZVJlY29yZFJlcXVlc3QSFAoFc05hbWUYASABKAlSBXNOYW1lEhYKBnByZWZpeBgCIAEoCVIGcHJlZml4EiAKC2ZpbmdlcnByaW50GAMgASgJUgtmaW5nZXJwcmludBIcCglwdWJsaWNLZXkYBCABKAlSCXB1YmxpY0tleQ==');
@$core.Deprecated('Use cacheRecordResponseDescriptor instead')
const CacheRecordResponse$json = const {
  '1': 'CacheRecordResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.CacheRecordResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [CacheRecordResponse_RecordsEntry$json],
};

@$core.Deprecated('Use cacheRecordResponseDescriptor instead')
const CacheRecordResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `CacheRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cacheRecordResponseDescriptor = $convert.base64Decode('ChNDYWNoZVJlY29yZFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9yEkQKB3JlY29yZHMYAyADKAsyKi5zb25yLmFwaS5DYWNoZVJlY29yZFJlc3BvbnNlLlJlY29yZHNFbnRyeVIHcmVjb3Jkcxo6CgxSZWNvcmRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use getRecordRequestDescriptor instead')
const GetRecordRequest$json = const {
  '1': 'GetRecordRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
    const {'1': 'fingerprint', '3': 3, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'publicKey', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `GetRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecordRequestDescriptor = $convert.base64Decode('ChBHZXRSZWNvcmRSZXF1ZXN0EhQKBXNOYW1lGAEgASgJUgVzTmFtZRIWCgZwcmVmaXgYAiABKAlSBnByZWZpeBIgCgtmaW5nZXJwcmludBgDIAEoCVILZmluZ2VycHJpbnQSHAoJcHVibGljS2V5GAQgASgJUglwdWJsaWNLZXk=');
@$core.Deprecated('Use getRecordResponseDescriptor instead')
const GetRecordResponse$json = const {
  '1': 'GetRecordResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.GetRecordResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [GetRecordResponse_RecordsEntry$json],
};

@$core.Deprecated('Use getRecordResponseDescriptor instead')
const GetRecordResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecordResponseDescriptor = $convert.base64Decode('ChFHZXRSZWNvcmRSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBWVycm9yGAIgASgJUgVlcnJvchJCCgdyZWNvcmRzGAMgAygLMiguc29uci5hcGkuR2V0UmVjb3JkUmVzcG9uc2UuUmVjb3Jkc0VudHJ5UgdyZWNvcmRzGjoKDFJlY29yZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use storeRecordRequestDescriptor instead')
const StoreRecordRequest$json = const {
  '1': 'StoreRecordRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
    const {'1': 'fingerprint', '3': 3, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'publicKey', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `StoreRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeRecordRequestDescriptor = $convert.base64Decode('ChJTdG9yZVJlY29yZFJlcXVlc3QSFAoFc05hbWUYASABKAlSBXNOYW1lEhYKBnByZWZpeBgCIAEoCVIGcHJlZml4EiAKC2ZpbmdlcnByaW50GAMgASgJUgtmaW5nZXJwcmludBIcCglwdWJsaWNLZXkYBCABKAlSCXB1YmxpY0tleQ==');
@$core.Deprecated('Use storeRecordResponseDescriptor instead')
const StoreRecordResponse$json = const {
  '1': 'StoreRecordResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.StoreRecordResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [StoreRecordResponse_RecordsEntry$json],
};

@$core.Deprecated('Use storeRecordResponseDescriptor instead')
const StoreRecordResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `StoreRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeRecordResponseDescriptor = $convert.base64Decode('ChNTdG9yZVJlY29yZFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9yEkQKB3JlY29yZHMYAyADKAsyKi5zb25yLmFwaS5TdG9yZVJlY29yZFJlc3BvbnNlLlJlY29yZHNFbnRyeVIHcmVjb3Jkcxo6CgxSZWNvcmRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use registerNameRequestDescriptor instead')
const RegisterNameRequest$json = const {
  '1': 'RegisterNameRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
    const {'1': 'fingerprint', '3': 3, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'publicKey', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `RegisterNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerNameRequestDescriptor = $convert.base64Decode('ChNSZWdpc3Rlck5hbWVSZXF1ZXN0EhQKBXNOYW1lGAEgASgJUgVzTmFtZRIWCgZwcmVmaXgYAiABKAlSBnByZWZpeBIgCgtmaW5nZXJwcmludBgDIAEoCVILZmluZ2VycHJpbnQSHAoJcHVibGljS2V5GAQgASgJUglwdWJsaWNLZXk=');
@$core.Deprecated('Use registerNameResponseDescriptor instead')
const RegisterNameResponse$json = const {
  '1': 'RegisterNameResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.RegisterNameResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [RegisterNameResponse_RecordsEntry$json],
};

@$core.Deprecated('Use registerNameResponseDescriptor instead')
const RegisterNameResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `RegisterNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerNameResponseDescriptor = $convert.base64Decode('ChRSZWdpc3Rlck5hbWVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBWVycm9yGAIgASgJUgVlcnJvchJFCgdyZWNvcmRzGAMgAygLMisuc29uci5hcGkuUmVnaXN0ZXJOYW1lUmVzcG9uc2UuUmVjb3Jkc0VudHJ5UgdyZWNvcmRzGjoKDFJlY29yZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use verifyNameRequestDescriptor instead')
const VerifyNameRequest$json = const {
  '1': 'VerifyNameRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
    const {'1': 'fingerprint', '3': 3, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'publicKey', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `VerifyNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyNameRequestDescriptor = $convert.base64Decode('ChFWZXJpZnlOYW1lUmVxdWVzdBIUCgVzTmFtZRgBIAEoCVIFc05hbWUSFgoGcHJlZml4GAIgASgJUgZwcmVmaXgSIAoLZmluZ2VycHJpbnQYAyABKAlSC2ZpbmdlcnByaW50EhwKCXB1YmxpY0tleRgEIAEoCVIJcHVibGljS2V5');
@$core.Deprecated('Use verifyNameResponseDescriptor instead')
const VerifyNameResponse$json = const {
  '1': 'VerifyNameResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.VerifyNameResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [VerifyNameResponse_RecordsEntry$json],
};

@$core.Deprecated('Use verifyNameResponseDescriptor instead')
const VerifyNameResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `VerifyNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyNameResponseDescriptor = $convert.base64Decode('ChJWZXJpZnlOYW1lUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISQwoHcmVjb3JkcxgDIAMoCzIpLnNvbnIuYXBpLlZlcmlmeU5hbWVSZXNwb25zZS5SZWNvcmRzRW50cnlSB3JlY29yZHMaOgoMUmVjb3Jkc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
