///
//  Generated code. Do not modify.
//  source: proto/common/beam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use eventTypeDescriptor instead')
const EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'GET', '2': 1},
    const {'1': 'SET', '2': 2},
    const {'1': 'DELETE', '2': 3},
    const {'1': 'PUT', '2': 4},
    const {'1': 'SYNC', '2': 5},
  ],
};

/// Descriptor for `EventType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventTypeDescriptor = $convert.base64Decode('CglFdmVudFR5cGUSCAoETk9ORRAAEgcKA0dFVBABEgcKA1NFVBACEgoKBkRFTEVURRADEgcKA1BVVBAEEggKBFNZTkMQBQ==');
@$core.Deprecated('Use eventDescriptor instead')
const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 9, '10': 'peer'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.sonr.beam.EventType', '10': 'type'},
    const {'1': 'entry', '3': 3, '4': 1, '5': 11, '6': '.sonr.beam.StoreEntry', '10': 'entry'},
    const {'1': 'store', '3': 4, '4': 1, '5': 11, '6': '.sonr.beam.Store', '10': 'store'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode('CgVFdmVudBISCgRwZWVyGAEgASgJUgRwZWVyEigKBHR5cGUYAiABKA4yFC5zb25yLmJlYW0uRXZlbnRUeXBlUgR0eXBlEisKBWVudHJ5GAMgASgLMhUuc29uci5iZWFtLlN0b3JlRW50cnlSBWVudHJ5EiYKBXN0b3JlGAQgASgLMhAuc29uci5iZWFtLlN0b3JlUgVzdG9yZQ==');
@$core.Deprecated('Use storeDescriptor instead')
const Store$json = const {
  '1': 'Store',
  '2': const [
    const {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.sonr.beam.Store.DataEntry', '10': 'data'},
    const {'1': 'capacity', '3': 2, '4': 1, '5': 5, '10': 'capacity'},
    const {'1': 'modified', '3': 3, '4': 1, '5': 3, '10': 'modified'},
    const {'1': 'ttl', '3': 4, '4': 1, '5': 3, '10': 'ttl'},
  ],
  '3': const [Store_DataEntry$json],
};

@$core.Deprecated('Use storeDescriptor instead')
const Store_DataEntry$json = const {
  '1': 'DataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.sonr.beam.StoreEntry', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Store`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeDescriptor = $convert.base64Decode('CgVTdG9yZRIuCgRkYXRhGAEgAygLMhouc29uci5iZWFtLlN0b3JlLkRhdGFFbnRyeVIEZGF0YRIaCghjYXBhY2l0eRgCIAEoBVIIY2FwYWNpdHkSGgoIbW9kaWZpZWQYAyABKANSCG1vZGlmaWVkEhAKA3R0bBgEIAEoA1IDdHRsGk4KCURhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIrCgV2YWx1ZRgCIAEoCzIVLnNvbnIuYmVhbS5TdG9yZUVudHJ5UgV2YWx1ZToCOAE=');
@$core.Deprecated('Use storeEntryDescriptor instead')
const StoreEntry$json = const {
  '1': 'StoreEntry',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 9, '10': 'peer'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'expiration', '3': 4, '4': 1, '5': 3, '10': 'expiration'},
    const {'1': 'created', '3': 5, '4': 1, '5': 3, '10': 'created'},
    const {'1': 'modified', '3': 6, '4': 1, '5': 3, '10': 'modified'},
  ],
};

/// Descriptor for `StoreEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeEntryDescriptor = $convert.base64Decode('CgpTdG9yZUVudHJ5EhIKBHBlZXIYASABKAlSBHBlZXISEAoDa2V5GAIgASgJUgNrZXkSFAoFdmFsdWUYAyABKAxSBXZhbHVlEh4KCmV4cGlyYXRpb24YBCABKANSCmV4cGlyYXRpb24SGAoHY3JlYXRlZBgFIAEoA1IHY3JlYXRlZBIaCghtb2RpZmllZBgGIAEoA1IIbW9kaWZpZWQ=');
