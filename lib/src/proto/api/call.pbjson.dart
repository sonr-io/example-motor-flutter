///
//  Generated code. Do not modify.
//  source: proto/api/call.proto
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
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.AuthorizeResponse.RecordsEntry', '10': 'records'},
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
final $typed_data.Uint8List authorizeResponseDescriptor = $convert.base64Decode('ChFBdXRob3JpemVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBWVycm9yGAIgASgJUgVlcnJvchJCCgdyZWNvcmRzGAMgAygLMiguc29uci5hcGkuQXV0aG9yaXplUmVzcG9uc2UuUmVjb3Jkc0VudHJ5UgdyZWNvcmRzGjoKDFJlY29yZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
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
    const {'1': 'cacheDir', '3': 2, '4': 1, '5': 9, '10': 'cacheDir'},
    const {'1': 'databaseDir', '3': 3, '4': 1, '5': 9, '10': 'databaseDir'},
    const {'1': 'documentsDir', '3': 4, '4': 1, '5': 9, '10': 'documentsDir'},
    const {'1': 'downloadsDir', '3': 5, '4': 1, '5': 9, '10': 'downloadsDir'},
    const {'1': 'textileDir', '3': 6, '4': 1, '5': 9, '10': 'textileDir'},
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
final $typed_data.Uint8List initializeRequestDescriptor = $convert.base64Decode('ChFJbml0aWFsaXplUmVxdWVzdBIvCghsb2NhdGlvbhgBIAEoCzITLnNvbnIuY29yZS5Mb2NhdGlvblIIbG9jYXRpb24SLAoHcHJvZmlsZRgCIAEoCzISLnNvbnIuY29yZS5Qcm9maWxlUgdwcm9maWxlEjUKCmNvbm5lY3Rpb24YAyABKA4yFS5zb25yLmNvcmUuQ29ubmVjdGlvblIKY29ubmVjdGlvbhJJCgtob3N0T3B0aW9ucxgEIAEoCzInLnNvbnIuYXBpLkluaXRpYWxpemVSZXF1ZXN0Lkhvc3RPcHRpb25zUgtob3N0T3B0aW9ucxJSCg5zZXJ2aWNlT3B0aW9ucxgFIAEoCzIqLnNvbnIuYXBpLkluaXRpYWxpemVSZXF1ZXN0LlNlcnZpY2VPcHRpb25zUg5zZXJ2aWNlT3B0aW9ucxJPCg1kZXZpY2VPcHRpb25zGAYgASgLMikuc29uci5hcGkuSW5pdGlhbGl6ZVJlcXVlc3QuRGV2aWNlT3B0aW9uc1INZGV2aWNlT3B0aW9ucxI4CgtlbnZpcm9ubWVudBgHIAEoDjIWLnNvbnIuY29yZS5FbnZpcm9ubWVudFILZW52aXJvbm1lbnQSSAoJdmFyaWFibGVzGAggAygLMiouc29uci5hcGkuSW5pdGlhbGl6ZVJlcXVlc3QuVmFyaWFibGVzRW50cnlSCXZhcmlhYmxlcxo8Cg5WYXJpYWJsZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGuUBCg1EZXZpY2VPcHRpb25zEg4KAmlkGAEgASgJUgJpZBIaCghjYWNoZURpchgCIAEoCVIIY2FjaGVEaXISIAoLZGF0YWJhc2VEaXIYAyABKAlSC2RhdGFiYXNlRGlyEiIKDGRvY3VtZW50c0RpchgEIAEoCVIMZG9jdW1lbnRzRGlyEiIKDGRvd25sb2Fkc0RpchgFIAEoCVIMZG93bmxvYWRzRGlyEh4KCnRleHRpbGVEaXIYBiABKAlSCnRleHRpbGVEaXISHgoKc3VwcG9ydERpchgHIAEoCVIKc3VwcG9ydERpchq+AQoLSG9zdE9wdGlvbnMSJAoNcXVpY1RyYW5zcG9ydBgBIAEoCFINcXVpY1RyYW5zcG9ydBIkCg1odHRwVHJhbnNwb3J0GAIgASgIUg1odHRwVHJhbnNwb3J0EhoKCGlwdjRPbmx5GAMgASgIUghpcHY0T25seRJHCgtsaXN0ZW5BZGRycxgEIAMoCzIlLnNvbnIuYXBpLkluaXRpYWxpemVSZXF1ZXN0LklQQWRkcmVzc1ILbGlzdGVuQWRkcnMaegoOU2VydmljZU9wdGlvbnMSGAoHdGV4dGlsZRgBIAEoCFIHdGV4dGlsZRIYCgdtYWlsYm94GAIgASgIUgdtYWlsYm94EhgKB2J1Y2tldHMYAyABKAhSB2J1Y2tldHMSGgoIaW50ZXJ2YWwYBCABKAVSCGludGVydmFsGrkBCglJUEFkZHJlc3MSEgoEbmFtZRgBIAEoCVIEbmFtZRIYCgdhZGRyZXNzGAIgASgJUgdhZGRyZXNzEhoKCGludGVybmFsGAMgASgIUghpbnRlcm5hbBJECgZmYW1pbHkYBCABKA4yLC5zb25yLmFwaS5Jbml0aWFsaXplUmVxdWVzdC5JUEFkZHJlc3MuRmFtaWx5UgZmYW1pbHkiHAoGRmFtaWx5EggKBElQVjQQABIICgRJUFY2EAE=');
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
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.sonr.api.EditRequest.Type', '10': 'type'},
    const {'1': 'profile', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'history', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Payload', '9': 0, '10': 'history'},
    const {'1': 'recent', '3': 4, '4': 1, '5': 11, '6': '.sonr.core.Profile', '9': 0, '10': 'recent'},
  ],
  '4': const [EditRequest_Type$json],
  '8': const [
    const {'1': 'deleteValue'},
  ],
};

@$core.Deprecated('Use editRequestDescriptor instead')
const EditRequest_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'DELETE', '2': 1},
    const {'1': 'MODIFY', '2': 2},
  ],
};

/// Descriptor for `EditRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editRequestDescriptor = $convert.base64Decode('CgtFZGl0UmVxdWVzdBIuCgR0eXBlGAEgASgOMhouc29uci5hcGkuRWRpdFJlcXVlc3QuVHlwZVIEdHlwZRIsCgdwcm9maWxlGAIgASgLMhIuc29uci5jb3JlLlByb2ZpbGVSB3Byb2ZpbGUSLgoHaGlzdG9yeRgDIAEoCzISLnNvbnIuY29yZS5QYXlsb2FkSABSB2hpc3RvcnkSLAoGcmVjZW50GAQgASgLMhIuc29uci5jb3JlLlByb2ZpbGVIAFIGcmVjZW50IigKBFR5cGUSCAoETk9ORRAAEgoKBkRFTEVURRABEgoKBk1PRElGWRACQg0KC2RlbGV0ZVZhbHVl');
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
    const {'1': 'key', '3': 1, '4': 1, '5': 14, '6': '.sonr.api.FetchRequest.Key', '10': 'key'},
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
final $typed_data.Uint8List fetchRequestDescriptor = $convert.base64Decode('CgxGZXRjaFJlcXVlc3QSLAoDa2V5GAEgASgOMhouc29uci5hcGkuRmV0Y2hSZXF1ZXN0LktleVIDa2V5IkIKA0tleRIHCgNBTEwQABILCgdQUk9GSUxFEAESCwoHREVWSUNFUxACEgsKB1JFQ0VOVFMQAxILCgdISVNUT1JZEAQ=');
@$core.Deprecated('Use fetchResponseDescriptor instead')
const FetchResponse$json = const {
  '1': 'FetchResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'profile', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'profile'},
    const {'1': 'devices', '3': 4, '4': 3, '5': 11, '6': '.sonr.api.FetchResponse.DevicesEntry', '10': 'devices'},
    const {'1': 'recents', '3': 5, '4': 1, '5': 11, '6': '.sonr.core.ProfileList', '10': 'recents'},
    const {'1': 'history', '3': 6, '4': 1, '5': 11, '6': '.sonr.core.PayloadList', '10': 'history'},
  ],
  '3': const [FetchResponse_DevicesEntry$json],
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

/// Descriptor for `FetchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchResponseDescriptor = $convert.base64Decode('Cg1GZXRjaFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9yEiwKB3Byb2ZpbGUYAyABKAsyEi5zb25yLmNvcmUuUHJvZmlsZVIHcHJvZmlsZRI+CgdkZXZpY2VzGAQgAygLMiQuc29uci5hcGkuRmV0Y2hSZXNwb25zZS5EZXZpY2VzRW50cnlSB2RldmljZXMSMAoHcmVjZW50cxgFIAEoCzIWLnNvbnIuY29yZS5Qcm9maWxlTGlzdFIHcmVjZW50cxIwCgdoaXN0b3J5GAYgASgLMhYuc29uci5jb3JlLlBheWxvYWRMaXN0UgdoaXN0b3J5GksKDERldmljZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIlCgV2YWx1ZRgCIAEoCzIPLnNvbnIuY29yZS5QZWVyUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use linkRequestDescriptor instead')
const LinkRequest$json = const {
  '1': 'LinkRequest',
  '2': const [
    const {'1': 'sName', '3': 1, '4': 1, '5': 9, '10': 'sName'},
    const {'1': 'mnemonic', '3': 2, '4': 1, '5': 9, '10': 'mnemonic'},
    const {'1': 'deviceId', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'method', '3': 4, '4': 1, '5': 14, '6': '.sonr.api.LinkRequest.Method', '10': 'method'},
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
final $typed_data.Uint8List linkRequestDescriptor = $convert.base64Decode('CgtMaW5rUmVxdWVzdBIUCgVzTmFtZRgBIAEoCVIFc05hbWUSGgoIbW5lbW9uaWMYAiABKAlSCG1uZW1vbmljEhoKCGRldmljZUlkGAMgASgJUghkZXZpY2VJZBI0CgZtZXRob2QYBCABKA4yHC5zb25yLmFwaS5MaW5rUmVxdWVzdC5NZXRob2RSBm1ldGhvZCIdCgZNZXRob2QSBwoDQUREEAASCgoGUkVNT1ZFEAE=');
@$core.Deprecated('Use linkResponseDescriptor instead')
const LinkResponse$json = const {
  '1': 'LinkResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.LinkResponse.RecordsEntry', '10': 'records'},
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
final $typed_data.Uint8List linkResponseDescriptor = $convert.base64Decode('CgxMaW5rUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISPQoHcmVjb3JkcxgDIAMoCzIjLnNvbnIuYXBpLkxpbmtSZXNwb25zZS5SZWNvcmRzRW50cnlSB3JlY29yZHMaOgoMUmVjb3Jkc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use shareRequestDescriptor instead')
const ShareRequest$json = const {
  '1': 'ShareRequest',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'peer'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.MessageItem', '10': 'message'},
    const {'1': 'paths', '3': 3, '4': 3, '5': 9, '10': 'paths'},
  ],
};

/// Descriptor for `ShareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareRequestDescriptor = $convert.base64Decode('CgxTaGFyZVJlcXVlc3QSIwoEcGVlchgBIAEoCzIPLnNvbnIuY29yZS5QZWVyUgRwZWVyEjAKB21lc3NhZ2UYAiABKAsyFi5zb25yLmNvcmUuTWVzc2FnZUl0ZW1SB21lc3NhZ2USFAoFcGF0aHMYAyADKAlSBXBhdGhz');
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
    const {'1': 'records', '3': 3, '4': 3, '5': 11, '6': '.sonr.api.RegisterResponse.RecordsEntry', '10': 'records'},
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
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode('ChBSZWdpc3RlclJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9yEkEKB3JlY29yZHMYAyADKAsyJy5zb25yLmFwaS5SZWdpc3RlclJlc3BvbnNlLlJlY29yZHNFbnRyeVIHcmVjb3Jkcxo6CgxSZWNvcmRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
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
