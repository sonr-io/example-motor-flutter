///
//  Generated code. Do not modify.
//  source: proto/api/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use decisionEventDescriptor instead')
const DecisionEvent$json = const {
  '1': 'DecisionEvent',
  '2': const [
    const {'1': 'decision', '3': 1, '4': 1, '5': 8, '10': 'decision'},
    const {'1': 'from', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'from'},
    const {'1': 'received', '3': 3, '4': 1, '5': 3, '10': 'received'},
  ],
};

/// Descriptor for `DecisionEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decisionEventDescriptor = $convert.base64Decode('Cg1EZWNpc2lvbkV2ZW50EhoKCGRlY2lzaW9uGAEgASgIUghkZWNpc2lvbhIjCgRmcm9tGAIgASgLMg8uc29uci5jb3JlLlBlZXJSBGZyb20SGgoIcmVjZWl2ZWQYAyABKANSCHJlY2VpdmVk');
@$core.Deprecated('Use refreshEventDescriptor instead')
const RefreshEvent$json = const {
  '1': 'RefreshEvent',
  '2': const [
    const {'1': 'olc', '3': 1, '4': 1, '5': 9, '10': 'olc'},
    const {'1': 'peers', '3': 2, '4': 3, '5': 11, '6': '.sonr.core.Peer', '10': 'peers'},
    const {'1': 'received', '3': 3, '4': 1, '5': 3, '10': 'received'},
  ],
};

/// Descriptor for `RefreshEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshEventDescriptor = $convert.base64Decode('CgxSZWZyZXNoRXZlbnQSEAoDb2xjGAEgASgJUgNvbGMSJQoFcGVlcnMYAiADKAsyDy5zb25yLmNvcmUuUGVlclIFcGVlcnMSGgoIcmVjZWl2ZWQYAyABKANSCHJlY2VpdmVk');
@$core.Deprecated('Use inviteEventDescriptor instead')
const InviteEvent$json = const {
  '1': 'InviteEvent',
  '2': const [
    const {'1': 'received', '3': 1, '4': 1, '5': 3, '10': 'received'},
    const {'1': 'from', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'from'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Payload', '10': 'payload'},
  ],
};

/// Descriptor for `InviteEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteEventDescriptor = $convert.base64Decode('CgtJbnZpdGVFdmVudBIaCghyZWNlaXZlZBgBIAEoA1IIcmVjZWl2ZWQSIwoEZnJvbRgCIAEoCzIPLnNvbnIuY29yZS5QZWVyUgRmcm9tEiwKB3BheWxvYWQYAyABKAsyEi5zb25yLmNvcmUuUGF5bG9hZFIHcGF5bG9hZA==');
@$core.Deprecated('Use mailboxEventDescriptor instead')
const MailboxEvent$json = const {
  '1': 'MailboxEvent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'buffer', '3': 2, '4': 1, '5': 12, '10': 'buffer'},
    const {'1': 'from', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'from'},
    const {'1': 'to', '3': 4, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'to'},
    const {'1': 'metadata', '3': 5, '4': 1, '5': 11, '6': '.sonr.core.Metadata', '10': 'metadata'},
  ],
};

/// Descriptor for `MailboxEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mailboxEventDescriptor = $convert.base64Decode('CgxNYWlsYm94RXZlbnQSDgoCaWQYASABKAlSAmlkEhYKBmJ1ZmZlchgCIAEoDFIGYnVmZmVyEiYKBGZyb20YAyABKAsyEi5zb25yLmNvcmUuUHJvZmlsZVIEZnJvbRIiCgJ0bxgEIAEoCzISLnNvbnIuY29yZS5Qcm9maWxlUgJ0bxIvCghtZXRhZGF0YRgFIAEoCzITLnNvbnIuY29yZS5NZXRhZGF0YVIIbWV0YWRhdGE=');
@$core.Deprecated('Use progressEventDescriptor instead')
const ProgressEvent$json = const {
  '1': 'ProgressEvent',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 5, '10': 'current'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
    const {'1': 'progress', '3': 3, '4': 1, '5': 1, '10': 'progress'},
    const {'1': 'received', '3': 4, '4': 1, '5': 3, '10': 'received'},
  ],
};

/// Descriptor for `ProgressEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List progressEventDescriptor = $convert.base64Decode('Cg1Qcm9ncmVzc0V2ZW50EhgKB2N1cnJlbnQYASABKAVSB2N1cnJlbnQSFAoFdG90YWwYAiABKAVSBXRvdGFsEhoKCHByb2dyZXNzGAMgASgBUghwcm9ncmVzcxIaCghyZWNlaXZlZBgEIAEoA1IIcmVjZWl2ZWQ=');
@$core.Deprecated('Use completeEventDescriptor instead')
const CompleteEvent$json = const {
  '1': 'CompleteEvent',
  '2': const [
    const {'1': 'direction', '3': 1, '4': 1, '5': 14, '6': '.sonr.api.CompleteEvent.Direction', '10': 'direction'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Payload', '10': 'payload'},
    const {'1': 'from', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'from'},
    const {'1': 'to', '3': 4, '4': 1, '5': 11, '6': '.sonr.core.Peer', '10': 'to'},
    const {'1': 'createdAt', '3': 5, '4': 1, '5': 3, '10': 'createdAt'},
    const {'1': 'receivedAt', '3': 6, '4': 1, '5': 3, '10': 'receivedAt'},
  ],
  '4': const [CompleteEvent_Direction$json],
};

@$core.Deprecated('Use completeEventDescriptor instead')
const CompleteEvent_Direction$json = const {
  '1': 'Direction',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'INCOMING', '2': 1},
    const {'1': 'OUTGOING', '2': 2},
  ],
};

/// Descriptor for `CompleteEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completeEventDescriptor = $convert.base64Decode('Cg1Db21wbGV0ZUV2ZW50Ej8KCWRpcmVjdGlvbhgBIAEoDjIhLnNvbnIuYXBpLkNvbXBsZXRlRXZlbnQuRGlyZWN0aW9uUglkaXJlY3Rpb24SLAoHcGF5bG9hZBgCIAEoCzISLnNvbnIuY29yZS5QYXlsb2FkUgdwYXlsb2FkEiMKBGZyb20YAyABKAsyDy5zb25yLmNvcmUuUGVlclIEZnJvbRIfCgJ0bxgEIAEoCzIPLnNvbnIuY29yZS5QZWVyUgJ0bxIcCgljcmVhdGVkQXQYBSABKANSCWNyZWF0ZWRBdBIeCgpyZWNlaXZlZEF0GAYgASgDUgpyZWNlaXZlZEF0IjQKCURpcmVjdGlvbhILCgdERUZBVUxUEAASDAoISU5DT01JTkcQARIMCghPVVRHT0lORxAC');
