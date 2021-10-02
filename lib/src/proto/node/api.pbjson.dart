///
//  Generated code. Do not modify.
//  source: proto/node/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use authorizeRequestDescriptor instead')
const AuthorizeRequest$json = const {
  '1': 'AuthorizeRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'mnemonic', '3': 2, '4': 1, '5': 9, '10': 'mnemonic'},
    const {'1': 'deviceId', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `AuthorizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeRequestDescriptor = $convert.base64Decode('ChBBdXRob3JpemVSZXF1ZXN0EhQKBXNOYW1lGAEgASgJUgVzTmFtZRIaCghtbmVtb25pYxgCIAEoCVIIbW5lbW9uaWMSGgoIZGV2aWNlSWQYAyABKAlSCGRldmljZUlk');
@$core.Deprecated('Use authorizeResponseDescriptor instead')
const AuthorizeResponse$json = const {
  '1': 'AuthorizeResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.node.AuthorizeResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [AuthorizeResponse_RecordsEntry$json],
};

@$core.Deprecated('Use authorizeResponseDescriptor instead')
const AuthorizeResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `AuthorizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeResponseDescriptor = $convert.base64Decode('ChFBdXRob3JpemVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBWVycm9yGAIgASgJUgVlcnJvchJDCgdyZWNvcmRzGAMgAygLMikuc29uci5ub2RlLkF1dGhvcml6ZVJlc3BvbnNlLlJlY29yZHNFbnRyeVIHcmVjb3Jkcxo6CgxSZWNvcmRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest$json = const {
  '1': 'InitializeRequest',
  '2': const [
    const {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.Location', '10': 'location'},
    const {'1': 'profile', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'connection', '3': 3, '4': 1, '5': 14, '6': '.sonr.core.Connection', '10': 'connection'},
    const {'1': 'hostOptions', '3': 4, '4': 1, '5': 11, '6': '.sonr.node.InitializeRequest.HostOptions', '10': 'hostOptions'},
    const {'1': 'serviceOptions', '3': 5, '4': 1, '5': 11, '6': '.sonr.node.InitializeRequest.ServiceOptions', '10': 'serviceOptions'},
    const {'1': 'deviceOptions', '3': 6, '4': 1, '5': 11, '6': '.sonr.node.InitializeRequest.DeviceOptions', '10': 'deviceOptions'},
    const {'1': 'environment', '3': 7, '4': 1, '5': 14, '6': '.sonr.core.Environment', '10': 'environment'},
  ],
  '3': const [InitializeRequest_DeviceOptions$json, InitializeRequest_HostOptions$json, InitializeRequest_ServiceOptions$json, InitializeRequest_IPAddress$json],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_DeviceOptions$json = const {
  '1': 'DeviceOptions',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'cacheDir', '3': 2, '4': 1, '5': 9, '10': 'cacheDir'},
    const {'1': 'databaseDir', '3': 3, '4': 1, '5': 9, '10': 'databaseDir'},
    const {'1': 'documentsDir', '3': 4, '4': 1, '5': 9, '10': 'documentsDir'},
    const {'1': 'downloadsDir', '3': 5, '4': 1, '5': 9, '10': 'downloadsDir'},
    const {'1': 'mailboxDir', '3': 6, '4': 1, '5': 9, '10': 'mailboxDir'},
    const {'1': 'supportDir', '3': 7, '4': 1, '5': 9, '10': 'supportDir'},
  ],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_HostOptions$json = const {
  '1': 'HostOptions',
  '2': const [
    const {'1': 'quicTransport', '3': 1, '4': 1, '5': 8, '10': 'quicTransport'},
    const {'1': 'httpTransport', '3': 2, '4': 1, '5': 8, '10': 'httpTransport'},
    const {'1': 'ipv4Only', '3': 3, '4': 1, '5': 8, '10': 'ipv4Only'},
    const {'1': 'listenAddrs', '3': 4, '4': 3, '5': 11, '6': '.sonr.node.InitializeRequest.IPAddress', '10': 'listenAddrs'},
  ],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_ServiceOptions$json = const {
  '1': 'ServiceOptions',
  '2': const [
    const {'1': 'textile', '3': 1, '4': 1, '5': 8, '10': 'textile'},
    const {'1': 'mailbox', '3': 2, '4': 1, '5': 8, '10': 'mailbox'},
    const {'1': 'buckets', '3': 3, '4': 1, '5': 8, '10': 'buckets'},
    const {'1': 'autoUpdate', '3': 4, '4': 1, '5': 8, '10': 'autoUpdate'},
  ],
};

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest_IPAddress$json = const {
  '1': 'IPAddress',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'mac', '3': 3, '4': 1, '5': 9, '10': 'mac'},
    const {'1': 'internal', '3': 4, '4': 1, '5': 8, '10': 'internal'},
    const {'1': 'family', '3': 5, '4': 1, '5': 14, '6': '.sonr.node.InitializeRequest.IPAddress.Family', '10': 'family'},
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
final $typed_data.Uint8List initializeRequestDescriptor = $convert.base64Decode('ChFJbml0aWFsaXplUmVxdWVzdBIvCghsb2NhdGlvbhgBIAEoCzITLnNvbnIuY29yZS5Mb2NhdGlvblIIbG9jYXRpb24SLAoHcHJvZmlsZRgCIAEoCzISLnNvbnIuY29yZS5Qcm9maWxlUgdwcm9maWxlEjUKCmNvbm5lY3Rpb24YAyABKA4yFS5zb25yLmNvcmUuQ29ubmVjdGlvblIKY29ubmVjdGlvbhJKCgtob3N0T3B0aW9ucxgEIAEoCzIoLnNvbnIubm9kZS5Jbml0aWFsaXplUmVxdWVzdC5Ib3N0T3B0aW9uc1ILaG9zdE9wdGlvbnMSUwoOc2VydmljZU9wdGlvbnMYBSABKAsyKy5zb25yLm5vZGUuSW5pdGlhbGl6ZVJlcXVlc3QuU2VydmljZU9wdGlvbnNSDnNlcnZpY2VPcHRpb25zElAKDWRldmljZU9wdGlvbnMYBiABKAsyKi5zb25yLm5vZGUuSW5pdGlhbGl6ZVJlcXVlc3QuRGV2aWNlT3B0aW9uc1INZGV2aWNlT3B0aW9ucxI4CgtlbnZpcm9ubWVudBgHIAEoDjIWLnNvbnIuY29yZS5FbnZpcm9ubWVudFILZW52aXJvbm1lbnQa5QEKDURldmljZU9wdGlvbnMSDgoCaWQYASABKAlSAmlkEhoKCGNhY2hlRGlyGAIgASgJUghjYWNoZURpchIgCgtkYXRhYmFzZURpchgDIAEoCVILZGF0YWJhc2VEaXISIgoMZG9jdW1lbnRzRGlyGAQgASgJUgxkb2N1bWVudHNEaXISIgoMZG93bmxvYWRzRGlyGAUgASgJUgxkb3dubG9hZHNEaXISHgoKbWFpbGJveERpchgGIAEoCVIKbWFpbGJveERpchIeCgpzdXBwb3J0RGlyGAcgASgJUgpzdXBwb3J0RGlyGr8BCgtIb3N0T3B0aW9ucxIkCg1xdWljVHJhbnNwb3J0GAEgASgIUg1xdWljVHJhbnNwb3J0EiQKDWh0dHBUcmFuc3BvcnQYAiABKAhSDWh0dHBUcmFuc3BvcnQSGgoIaXB2NE9ubHkYAyABKAhSCGlwdjRPbmx5EkgKC2xpc3RlbkFkZHJzGAQgAygLMiYuc29uci5ub2RlLkluaXRpYWxpemVSZXF1ZXN0LklQQWRkcmVzc1ILbGlzdGVuQWRkcnMafgoOU2VydmljZU9wdGlvbnMSGAoHdGV4dGlsZRgBIAEoCFIHdGV4dGlsZRIYCgdtYWlsYm94GAIgASgIUgdtYWlsYm94EhgKB2J1Y2tldHMYAyABKAhSB2J1Y2tldHMSHgoKYXV0b1VwZGF0ZRgEIAEoCFIKYXV0b1VwZGF0ZRrIAQoJSVBBZGRyZXNzEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFdmFsdWUYAiABKAlSBXZhbHVlEhAKA21hYxgDIAEoCVIDbWFjEhoKCGludGVybmFsGAQgASgIUghpbnRlcm5hbBJFCgZmYW1pbHkYBSABKA4yLS5zb25yLm5vZGUuSW5pdGlhbGl6ZVJlcXVlc3QuSVBBZGRyZXNzLkZhbWlseVIGZmFtaWx5IhwKBkZhbWlseRIICgRJUFY0EAASCAoESVBWNhAB');
@$core.Deprecated('Use initializeResponseDescriptor instead')
const InitializeResponse$json = const {
  '1': 'InitializeResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'profile', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'recents', '3': 4, '4': 3, '5': 11, '6': '.sonr.node.InitializeResponse.RecentsEntry', '10': 'recents'},
    const {'1': 'history', '3': 5, '4': 3, '5': 11, '6': '.sonr.node.InitializeResponse.HistoryEntry', '10': 'history'},
    const {'1': 'userStatus', '3': 6, '4': 1, '5': 14, '6': '.sonr.node.InitializeResponse.UserStatus', '10': 'userStatus'},
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
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.PayloadItemList', '10': 'value'},
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
final $typed_data.Uint8List initializeResponseDescriptor = $convert.base64Decode('ChJJbml0aWFsaXplUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISLAoHcHJvZmlsZRgDIAEoCzISLnNvbnIuY29yZS5Qcm9maWxlUgdwcm9maWxlEkQKB3JlY2VudHMYBCADKAsyKi5zb25yLm5vZGUuSW5pdGlhbGl6ZVJlc3BvbnNlLlJlY2VudHNFbnRyeVIHcmVjZW50cxJECgdoaXN0b3J5GAUgAygLMiouc29uci5ub2RlLkluaXRpYWxpemVSZXNwb25zZS5IaXN0b3J5RW50cnlSB2hpc3RvcnkSSAoKdXNlclN0YXR1cxgGIAEoDjIoLnNvbnIubm9kZS5Jbml0aWFsaXplUmVzcG9uc2UuVXNlclN0YXR1c1IKdXNlclN0YXR1cxpSCgxSZWNlbnRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSLAoFdmFsdWUYAiABKAsyFi5zb25yLmNvcmUuUHJvZmlsZUxpc3RSBXZhbHVlOgI4ARpWCgxIaXN0b3J5RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSMAoFdmFsdWUYAiABKAsyGi5zb25yLmNvcmUuUGF5bG9hZEl0ZW1MaXN0UgV2YWx1ZToCOAEiJAoKVXNlclN0YXR1cxINCglSRVRVUk5JTkcQABIHCgNORVcQAQ==');
@$core.Deprecated('Use supplyRequestDescriptor instead')
const SupplyRequest$json = const {
  '1': 'SupplyRequest',
  '2': const [
    const {'1': 'paths', '3': 1, '4': 3, '5': 9, '10': 'paths'},
    const {'1': 'peer', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Peer', '9': 0, '10': 'peer', '17': true},
  ],
  '8': const [
    const {'1': '_peer'},
  ],
};

/// Descriptor for `SupplyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplyRequestDescriptor = $convert.base64Decode('Cg1TdXBwbHlSZXF1ZXN0EhQKBXBhdGhzGAEgAygJUgVwYXRocxIoCgRwZWVyGAIgASgLMg8uc29uci5jb3JlLlBlZXJIAFIEcGVlcogBAUIHCgVfcGVlcg==');
@$core.Deprecated('Use supplyResponseDescriptor instead')
const SupplyResponse$json = const {
  '1': 'SupplyResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `SupplyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplyResponseDescriptor = $convert.base64Decode('Cg5TdXBwbHlSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBWVycm9yGAIgASgJUgVlcnJvcg==');
@$core.Deprecated('Use editRequestDescriptor instead')
const EditRequest$json = const {
  '1': 'EditRequest',
  '2': const [
    const {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
  ],
};

/// Descriptor for `EditRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editRequestDescriptor = $convert.base64Decode('CgtFZGl0UmVxdWVzdBIsCgdwcm9maWxlGAEgASgLMhIuc29uci5jb3JlLlByb2ZpbGVSB3Byb2ZpbGU=');
@$core.Deprecated('Use editResponseDescriptor instead')
const EditResponse$json = const {
  '1': 'EditResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `EditResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editResponseDescriptor = $convert.base64Decode('CgxFZGl0UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3I=');
@$core.Deprecated('Use fetchRequestDescriptor instead')
const FetchRequest$json = const {
  '1': 'FetchRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 14, '6': '.sonr.node.FetchRequest.Key', '10': 'key'},
  ],
  '4': const [FetchRequest_Key$json],
};

@$core.Deprecated('Use fetchRequestDescriptor instead')
const FetchRequest_Key$json = const {
  '1': 'Key',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'PROFILE', '2': 1},
    const {'1': 'DEVICES', '2': 2},
    const {'1': 'RECENTS', '2': 3},
    const {'1': 'HISTORY', '2': 4},
  ],
};

/// Descriptor for `FetchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchRequestDescriptor = $convert.base64Decode('CgxGZXRjaFJlcXVlc3QSLQoDa2V5GAEgASgOMhsuc29uci5ub2RlLkZldGNoUmVxdWVzdC5LZXlSA2tleSJCCgNLZXkSBwoDQUxMEAASCwoHUFJPRklMRRABEgsKB0RFVklDRVMQAhILCgdSRUNFTlRTEAMSCwoHSElTVE9SWRAE');
@$core.Deprecated('Use fetchResponseDescriptor instead')
const FetchResponse$json = const {
  '1': 'FetchResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'profile', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'devices', '3': 4, '4': 3, '5': 11, '6': '.sonr.node.FetchResponse.DevicesEntry', '10': 'devices'},
    const {'1': 'recents', '3': 5, '4': 3, '5': 11, '6': '.sonr.node.FetchResponse.RecentsEntry', '10': 'recents'},
    const {'1': 'history', '3': 6, '4': 3, '5': 11, '6': '.sonr.node.FetchResponse.HistoryEntry', '10': 'history'},
  ],
  '3': const [FetchResponse_DevicesEntry$json, FetchResponse_RecentsEntry$json, FetchResponse_HistoryEntry$json],
};

@$core.Deprecated('Use fetchResponseDescriptor instead')
const FetchResponse_DevicesEntry$json = const {
  '1': 'DevicesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use fetchResponseDescriptor instead')
const FetchResponse_RecentsEntry$json = const {
  '1': 'RecentsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.ProfileList', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use fetchResponseDescriptor instead')
const FetchResponse_HistoryEntry$json = const {
  '1': 'HistoryEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.PayloadItemList', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `FetchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchResponseDescriptor = $convert.base64Decode('Cg1GZXRjaFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9yEiwKB3Byb2ZpbGUYAyABKAsyEi5zb25yLmNvcmUuUHJvZmlsZVIHcHJvZmlsZRI/CgdkZXZpY2VzGAQgAygLMiUuc29uci5ub2RlLkZldGNoUmVzcG9uc2UuRGV2aWNlc0VudHJ5UgdkZXZpY2VzEj8KB3JlY2VudHMYBSADKAsyJS5zb25yLm5vZGUuRmV0Y2hSZXNwb25zZS5SZWNlbnRzRW50cnlSB3JlY2VudHMSPwoHaGlzdG9yeRgGIAMoCzIlLnNvbnIubm9kZS5GZXRjaFJlc3BvbnNlLkhpc3RvcnlFbnRyeVIHaGlzdG9yeRpLCgxEZXZpY2VzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSJQoFdmFsdWUYAiABKAsyDy5zb25yLmNvcmUuUGVlclIFdmFsdWU6AjgBGlIKDFJlY2VudHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIsCgV2YWx1ZRgCIAEoCzIWLnNvbnIuY29yZS5Qcm9maWxlTGlzdFIFdmFsdWU6AjgBGlYKDEhpc3RvcnlFbnRyeRIQCgNrZXkYASABKAlSA2tleRIwCgV2YWx1ZRgCIAEoCzIaLnNvbnIuY29yZS5QYXlsb2FkSXRlbUxpc3RSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use linkRequestDescriptor instead')
const LinkRequest$json = const {
  '1': 'LinkRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'mnemonic', '3': 2, '4': 1, '5': 9, '10': 'mnemonic'},
    const {'1': 'deviceId', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'method', '3': 4, '4': 1, '5': 14, '6': '.sonr.node.LinkRequest.Method', '10': 'method'},
  ],
  '4': const [LinkRequest_Method$json],
};

@$core.Deprecated('Use linkRequestDescriptor instead')
const LinkRequest_Method$json = const {
  '1': 'Method',
  '2': const [
    const {'1': 'ADD', '2': 0},
    const {'1': 'REMOVE', '2': 1},
  ],
};

/// Descriptor for `LinkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkRequestDescriptor = $convert.base64Decode('CgtMaW5rUmVxdWVzdBIUCgVzTmFtZRgBIAEoCVIFc05hbWUSGgoIbW5lbW9uaWMYAiABKAlSCG1uZW1vbmljEhoKCGRldmljZUlkGAMgASgJUghkZXZpY2VJZBI1CgZtZXRob2QYBCABKA4yHS5zb25yLm5vZGUuTGlua1JlcXVlc3QuTWV0aG9kUgZtZXRob2QiHQoGTWV0aG9kEgcKA0FERBAAEgoKBlJFTU9WRRAB');
@$core.Deprecated('Use linkResponseDescriptor instead')
const LinkResponse$json = const {
  '1': 'LinkResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.node.LinkResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [LinkResponse_RecordsEntry$json],
};

@$core.Deprecated('Use linkResponseDescriptor instead')
const LinkResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `LinkResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkResponseDescriptor = $convert.base64Decode('CgxMaW5rUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISPgoHcmVjb3JkcxgDIAMoCzIkLnNvbnIubm9kZS5MaW5rUmVzcG9uc2UuUmVjb3Jkc0VudHJ5UgdyZWNvcmRzGjoKDFJlY29yZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use shareRequestDescriptor instead')
const ShareRequest$json = const {
  '1': 'ShareRequest',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'peer'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.MessageItem', '10': 'message'},
  ],
};

/// Descriptor for `ShareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareRequestDescriptor = $convert.base64Decode('CgxTaGFyZVJlcXVlc3QSIwoEcGVlchgBIAEoCzIPLnNvbnIuY29yZS5QZWVyUgRwZWVyEjAKB21lc3NhZ2UYAiABKAsyFi5zb25yLmNvcmUuTWVzc2FnZUl0ZW1SB21lc3NhZ2U=');
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
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
    const {'1': 'fingerprint', '3': 3, '4': 1, '5': 9, '10': 'fingerprint'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSFAoFc05hbWUYASABKAlSBXNOYW1lEhYKBnByZWZpeBgCIAEoCVIGcHJlZml4EiAKC2ZpbmdlcnByaW50GAMgASgJUgtmaW5nZXJwcmludA==');
@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = const {
  '1': 'RegisterResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.node.RegisterResponse.RecordsEntry', '10': 'records'},
  ],
  '3': const [RegisterResponse_RecordsEntry$json],
};

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse_RecordsEntry$json = const {
  '1': 'RecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode('ChBSZWdpc3RlclJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9yEkIKB3JlY29yZHMYAyADKAsyKC5zb25yLm5vZGUuUmVnaXN0ZXJSZXNwb25zZS5SZWNvcmRzRW50cnlSB3JlY29yZHMaOgoMUmVjb3Jkc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
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
@$core.Deprecated('Use statRequestDescriptor instead')
const StatRequest$json = const {
  '1': 'StatRequest',
};

/// Descriptor for `StatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statRequestDescriptor = $convert.base64Decode('CgtTdGF0UmVxdWVzdA==');
@$core.Deprecated('Use statResponseDescriptor instead')
const StatResponse$json = const {
  '1': 'StatResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'sName', '3': 3, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'profile', '3': 4, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'device', '3': 5, '4': 1, '5': 11, '6': '.sonr.node.StatResponse.Device', '10': 'device'},
    const {'1': 'network', '3': 6, '4': 1, '5': 11, '6': '.sonr.node.StatResponse.Network', '10': 'network'},
  ],
  '3': const [StatResponse_Device$json, StatResponse_Network$json],
};

@$core.Deprecated('Use statResponseDescriptor instead')
const StatResponse_Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'os', '3': 3, '4': 1, '5': 9, '10': 'os'},
    const {'1': 'arch', '3': 4, '4': 1, '5': 9, '10': 'arch'},
    const {'1': 'isDesktop', '3': 5, '4': 1, '5': 8, '10': 'isDesktop'},
    const {'1': 'isMobile', '3': 6, '4': 1, '5': 8, '10': 'isMobile'},
  ],
};

@$core.Deprecated('Use statResponseDescriptor instead')
const StatResponse_Network$json = const {
  '1': 'Network',
  '2': const [
    const {'1': 'publicKey', '3': 1, '4': 1, '5': 9, '10': 'publicKey'},
    const {'1': 'peerID', '3': 2, '4': 1, '5': 9, '10': 'peerID'},
    const {'1': 'multiaddr', '3': 3, '4': 1, '5': 9, '10': 'multiaddr'},
  ],
};

/// Descriptor for `StatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statResponseDescriptor = $convert.base64Decode('CgxTdGF0UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISFAoFc05hbWUYAyABKAlSBXNOYW1lEiwKB3Byb2ZpbGUYBCABKAsyEi5zb25yLmNvcmUuUHJvZmlsZVIHcHJvZmlsZRI2CgZkZXZpY2UYBSABKAsyHi5zb25yLm5vZGUuU3RhdFJlc3BvbnNlLkRldmljZVIGZGV2aWNlEjkKB25ldHdvcmsYBiABKAsyHy5zb25yLm5vZGUuU3RhdFJlc3BvbnNlLk5ldHdvcmtSB25ldHdvcmsaigEKBkRldmljZRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIOCgJvcxgDIAEoCVICb3MSEgoEYXJjaBgEIAEoCVIEYXJjaBIcCglpc0Rlc2t0b3AYBSABKAhSCWlzRGVza3RvcBIaCghpc01vYmlsZRgGIAEoCFIIaXNNb2JpbGUaXQoHTmV0d29yaxIcCglwdWJsaWNLZXkYASABKAlSCXB1YmxpY0tleRIWCgZwZWVySUQYAiABKAlSBnBlZXJJRBIcCgltdWx0aWFkZHIYAyABKAlSCW11bHRpYWRkcg==');
