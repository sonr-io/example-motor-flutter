///
//  Generated code. Do not modify.
//  source: proto/common/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use fileItemDescriptor instead')
const FileItem$json = const {
  '1': 'FileItem',
  '2': const [
    const {'1': 'mime', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.MIME', '10': 'mime'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'size', '3': 4, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'thumbnail', '3': 5, '4': 1, '5': 11, '6': '.sonr.core.Thumbnail', '10': 'thumbnail'},
    const {'1': 'lastModified', '3': 6, '4': 1, '5': 3, '10': 'lastModified'},
  ],
};

/// Descriptor for `FileItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileItemDescriptor = $convert.base64Decode('CghGaWxlSXRlbRIjCgRtaW1lGAEgASgLMg8uc29uci5jb3JlLk1JTUVSBG1pbWUSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRwYXRoGAMgASgJUgRwYXRoEhIKBHNpemUYBCABKANSBHNpemUSMgoJdGh1bWJuYWlsGAUgASgLMhQuc29uci5jb3JlLlRodW1ibmFpbFIJdGh1bWJuYWlsEiIKDGxhc3RNb2RpZmllZBgGIAEoA1IMbGFzdE1vZGlmaWVk');
@$core.Deprecated('Use messageItemDescriptor instead')
const MessageItem$json = const {
  '1': 'MessageItem',
  '2': const [
    const {'1': 'mime', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.MIME', '10': 'mime'},
    const {'1': 'subject', '3': 2, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'createdAt', '3': 4, '4': 1, '5': 3, '10': 'createdAt'},
    const {'1': 'attachments', '3': 5, '4': 3, '5': 11, '6': '.sonr.core.FileItem', '10': 'attachments'},
  ],
};

/// Descriptor for `MessageItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageItemDescriptor = $convert.base64Decode('CgtNZXNzYWdlSXRlbRIjCgRtaW1lGAEgASgLMg8uc29uci5jb3JlLk1JTUVSBG1pbWUSGAoHc3ViamVjdBgCIAEoCVIHc3ViamVjdBISCgRib2R5GAMgASgJUgRib2R5EhwKCWNyZWF0ZWRBdBgEIAEoA1IJY3JlYXRlZEF0EjUKC2F0dGFjaG1lbnRzGAUgAygLMhMuc29uci5jb3JlLkZpbGVJdGVtUgthdHRhY2htZW50cw==');
@$core.Deprecated('Use urlItemDescriptor instead')
const UrlItem$json = const {
  '1': 'UrlItem',
  '2': const [
    const {'1': 'mime', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.MIME', '10': 'mime'},
    const {'1': 'link', '3': 2, '4': 1, '5': 9, '10': 'link'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'site', '3': 4, '4': 1, '5': 9, '10': 'site'},
    const {'1': 'siteName', '3': 5, '4': 1, '5': 9, '10': 'siteName'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'openGraph', '3': 7, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph', '10': 'openGraph'},
  ],
};

/// Descriptor for `UrlItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List urlItemDescriptor = $convert.base64Decode('CgdVcmxJdGVtEiMKBG1pbWUYASABKAsyDy5zb25yLmNvcmUuTUlNRVIEbWltZRISCgRsaW5rGAIgASgJUgRsaW5rEhQKBXRpdGxlGAMgASgJUgV0aXRsZRISCgRzaXRlGAQgASgJUgRzaXRlEhoKCHNpdGVOYW1lGAUgASgJUghzaXRlTmFtZRIgCgtkZXNjcmlwdGlvbhgGIAEoCVILZGVzY3JpcHRpb24SMgoJb3BlbkdyYXBoGAcgASgLMhQuc29uci5jb3JlLk9wZW5HcmFwaFIJb3BlbkdyYXBo');
@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph$json = const {
  '1': 'OpenGraph',
  '2': const [
    const {'1': 'primary', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Primary', '10': 'primary'},
    const {'1': 'images', '3': 2, '4': 3, '5': 11, '6': '.sonr.core.OpenGraph.Image', '10': 'images'},
    const {'1': 'videos', '3': 3, '4': 3, '5': 11, '6': '.sonr.core.OpenGraph.Video', '10': 'videos'},
    const {'1': 'audios', '3': 4, '4': 3, '5': 11, '6': '.sonr.core.OpenGraph.Audio', '10': 'audios'},
    const {'1': 'twitter', '3': 5, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Twitter', '10': 'twitter'},
  ],
  '3': const [OpenGraph_Primary$json, OpenGraph_Image$json, OpenGraph_Video$json, OpenGraph_Audio$json, OpenGraph_Twitter$json],
  '4': const [OpenGraph_Type$json],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Primary$json = const {
  '1': 'Primary',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.sonr.core.OpenGraph.Type', '10': 'type'},
    const {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Image', '9': 0, '10': 'image'},
    const {'1': 'video', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Video', '9': 0, '10': 'video'},
    const {'1': 'audio', '3': 4, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Audio', '9': 0, '10': 'audio'},
    const {'1': 'twitter', '3': 5, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Twitter', '9': 0, '10': 'twitter'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Image$json = const {
  '1': 'Image',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'secureUrl', '3': 2, '4': 1, '5': 9, '10': 'secureUrl'},
    const {'1': 'width', '3': 3, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 4, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Video$json = const {
  '1': 'Video',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'secureUrl', '3': 2, '4': 1, '5': 9, '10': 'secureUrl'},
    const {'1': 'width', '3': 3, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 4, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Audio$json = const {
  '1': 'Audio',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'secureUrl', '3': 2, '4': 1, '5': 9, '10': 'secureUrl'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Twitter$json = const {
  '1': 'Twitter',
  '2': const [
    const {'1': 'card', '3': 1, '4': 1, '5': 9, '10': 'card'},
    const {'1': 'site', '3': 2, '4': 1, '5': 9, '10': 'site'},
    const {'1': 'siteId', '3': 3, '4': 1, '5': 9, '10': 'siteId'},
    const {'1': 'creator', '3': 4, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'creatorId', '3': 5, '4': 1, '5': 9, '10': 'creatorId'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'title', '3': 7, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'image', '3': 8, '4': 1, '5': 9, '10': 'image'},
    const {'1': 'imageAlt', '3': 9, '4': 1, '5': 9, '10': 'imageAlt'},
    const {'1': 'url', '3': 10, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'player', '3': 11, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Twitter.Player', '10': 'player'},
    const {'1': 'iphone', '3': 12, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Twitter.IPhone', '10': 'iphone'},
    const {'1': 'ipad', '3': 13, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Twitter.IPad', '10': 'ipad'},
    const {'1': 'googlePlay', '3': 14, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Twitter.GooglePlay', '10': 'googlePlay'},
  ],
  '3': const [OpenGraph_Twitter_Player$json, OpenGraph_Twitter_IPhone$json, OpenGraph_Twitter_IPad$json, OpenGraph_Twitter_GooglePlay$json],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Twitter_Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'stream', '3': 4, '4': 1, '5': 9, '10': 'stream'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Twitter_IPhone$json = const {
  '1': 'IPhone',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Twitter_IPad$json = const {
  '1': 'IPad',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Twitter_GooglePlay$json = const {
  '1': 'GooglePlay',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

@$core.Deprecated('Use openGraphDescriptor instead')
const OpenGraph_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'IMAGE', '2': 0},
    const {'1': 'VIDEO', '2': 1},
    const {'1': 'TWITTER', '2': 2},
    const {'1': 'AUDIO', '2': 3},
    const {'1': 'NONE', '2': 4},
  ],
};

/// Descriptor for `OpenGraph`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openGraphDescriptor = $convert.base64Decode('CglPcGVuR3JhcGgSNgoHcHJpbWFyeRgBIAEoCzIcLnNvbnIuY29yZS5PcGVuR3JhcGguUHJpbWFyeVIHcHJpbWFyeRIyCgZpbWFnZXMYAiADKAsyGi5zb25yLmNvcmUuT3BlbkdyYXBoLkltYWdlUgZpbWFnZXMSMgoGdmlkZW9zGAMgAygLMhouc29uci5jb3JlLk9wZW5HcmFwaC5WaWRlb1IGdmlkZW9zEjIKBmF1ZGlvcxgEIAMoCzIaLnNvbnIuY29yZS5PcGVuR3JhcGguQXVkaW9SBmF1ZGlvcxI2Cgd0d2l0dGVyGAUgASgLMhwuc29uci5jb3JlLk9wZW5HcmFwaC5Ud2l0dGVyUgd0d2l0dGVyGpYCCgdQcmltYXJ5Ei0KBHR5cGUYASABKA4yGS5zb25yLmNvcmUuT3BlbkdyYXBoLlR5cGVSBHR5cGUSMgoFaW1hZ2UYAiABKAsyGi5zb25yLmNvcmUuT3BlbkdyYXBoLkltYWdlSABSBWltYWdlEjIKBXZpZGVvGAMgASgLMhouc29uci5jb3JlLk9wZW5HcmFwaC5WaWRlb0gAUgV2aWRlbxIyCgVhdWRpbxgEIAEoCzIaLnNvbnIuY29yZS5PcGVuR3JhcGguQXVkaW9IAFIFYXVkaW8SOAoHdHdpdHRlchgFIAEoCzIcLnNvbnIuY29yZS5PcGVuR3JhcGguVHdpdHRlckgAUgd0d2l0dGVyQgYKBGRhdGEaeQoFSW1hZ2USEAoDdXJsGAEgASgJUgN1cmwSHAoJc2VjdXJlVXJsGAIgASgJUglzZWN1cmVVcmwSFAoFd2lkdGgYAyABKAVSBXdpZHRoEhYKBmhlaWdodBgEIAEoBVIGaGVpZ2h0EhIKBHR5cGUYBSABKAlSBHR5cGUaeQoFVmlkZW8SEAoDdXJsGAEgASgJUgN1cmwSHAoJc2VjdXJlVXJsGAIgASgJUglzZWN1cmVVcmwSFAoFd2lkdGgYAyABKAVSBXdpZHRoEhYKBmhlaWdodBgEIAEoBVIGaGVpZ2h0EhIKBHR5cGUYBSABKAlSBHR5cGUaSwoFQXVkaW8SEAoDdXJsGAEgASgJUgN1cmwSHAoJc2VjdXJlVXJsGAIgASgJUglzZWN1cmVVcmwSEgoEdHlwZRgDIAEoCVIEdHlwZRqbBgoHVHdpdHRlchISCgRjYXJkGAEgASgJUgRjYXJkEhIKBHNpdGUYAiABKAlSBHNpdGUSFgoGc2l0ZUlkGAMgASgJUgZzaXRlSWQSGAoHY3JlYXRvchgEIAEoCVIHY3JlYXRvchIcCgljcmVhdG9ySWQYBSABKAlSCWNyZWF0b3JJZBIgCgtkZXNjcmlwdGlvbhgGIAEoCVILZGVzY3JpcHRpb24SFAoFdGl0bGUYByABKAlSBXRpdGxlEhQKBWltYWdlGAggASgJUgVpbWFnZRIaCghpbWFnZUFsdBgJIAEoCVIIaW1hZ2VBbHQSEAoDdXJsGAogASgJUgN1cmwSOwoGcGxheWVyGAsgASgLMiMuc29uci5jb3JlLk9wZW5HcmFwaC5Ud2l0dGVyLlBsYXllclIGcGxheWVyEjsKBmlwaG9uZRgMIAEoCzIjLnNvbnIuY29yZS5PcGVuR3JhcGguVHdpdHRlci5JUGhvbmVSBmlwaG9uZRI1CgRpcGFkGA0gASgLMiEuc29uci5jb3JlLk9wZW5HcmFwaC5Ud2l0dGVyLklQYWRSBGlwYWQSRwoKZ29vZ2xlUGxheRgOIAEoCzInLnNvbnIuY29yZS5PcGVuR3JhcGguVHdpdHRlci5Hb29nbGVQbGF5Ugpnb29nbGVQbGF5GmAKBlBsYXllchIQCgN1cmwYASABKAlSA3VybBIUCgV3aWR0aBgCIAEoBVIFd2lkdGgSFgoGaGVpZ2h0GAMgASgFUgZoZWlnaHQSFgoGc3RyZWFtGAQgASgJUgZzdHJlYW0aPgoGSVBob25lEhIKBG5hbWUYASABKAlSBG5hbWUSDgoCaWQYAiABKAlSAmlkEhAKA3VybBgDIAEoCVIDdXJsGjwKBElQYWQSEgoEbmFtZRgBIAEoCVIEbmFtZRIOCgJpZBgCIAEoCVICaWQSEAoDdXJsGAMgASgJUgN1cmwaQgoKR29vZ2xlUGxheRISCgRuYW1lGAEgASgJUgRuYW1lEg4KAmlkGAIgASgJUgJpZBIQCgN1cmwYAyABKAlSA3VybCI+CgRUeXBlEgkKBUlNQUdFEAASCQoFVklERU8QARILCgdUV0lUVEVSEAISCQoFQVVESU8QAxIICgROT05FEAQ=');
@$core.Deprecated('Use thumbnailDescriptor instead')
const Thumbnail$json = const {
  '1': 'Thumbnail',
  '2': const [
    const {'1': 'size', '3': 1, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'buffer', '3': 2, '4': 1, '5': 12, '10': 'buffer'},
    const {'1': 'mime', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.MIME', '10': 'mime'},
  ],
};

/// Descriptor for `Thumbnail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thumbnailDescriptor = $convert.base64Decode('CglUaHVtYm5haWwSEgoEc2l6ZRgBIAEoA1IEc2l6ZRIWCgZidWZmZXIYAiABKAxSBmJ1ZmZlchIjCgRtaW1lGAMgASgLMg8uc29uci5jb3JlLk1JTUVSBG1pbWU=');
@$core.Deprecated('Use payloadDescriptor instead')
const Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.sonr.core.Payload.Item', '10': 'items'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.Profile', '10': 'owner'},
    const {'1': 'size', '3': 3, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'createdAt', '3': 4, '4': 1, '5': 3, '10': 'createdAt'},
  ],
  '3': const [Payload_Item$json],
};

@$core.Deprecated('Use payloadDescriptor instead')
const Payload_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'mime', '3': 1, '4': 1, '5': 11, '6': '.sonr.core.MIME', '10': 'mime'},
    const {'1': 'size', '3': 2, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'file', '3': 3, '4': 1, '5': 11, '6': '.sonr.core.FileItem', '9': 0, '10': 'file'},
    const {'1': 'url', '3': 4, '4': 1, '5': 11, '6': '.sonr.core.UrlItem', '9': 0, '10': 'url'},
    const {'1': 'message', '3': 5, '4': 1, '5': 11, '6': '.sonr.core.MessageItem', '9': 0, '10': 'message'},
    const {'1': 'thumbnail', '3': 6, '4': 1, '5': 11, '6': '.sonr.core.Thumbnail', '9': 1, '10': 'thumbnail'},
    const {'1': 'openGraph', '3': 7, '4': 1, '5': 11, '6': '.sonr.core.OpenGraph.Primary', '9': 1, '10': 'openGraph'},
  ],
  '8': const [
    const {'1': 'data'},
    const {'1': 'preview'},
  ],
};

/// Descriptor for `Payload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payloadDescriptor = $convert.base64Decode('CgdQYXlsb2FkEi0KBWl0ZW1zGAEgAygLMhcuc29uci5jb3JlLlBheWxvYWQuSXRlbVIFaXRlbXMSKAoFb3duZXIYAiABKAsyEi5zb25yLmNvcmUuUHJvZmlsZVIFb3duZXISEgoEc2l6ZRgDIAEoA1IEc2l6ZRIcCgljcmVhdGVkQXQYBCABKANSCWNyZWF0ZWRBdBrNAgoESXRlbRIjCgRtaW1lGAEgASgLMg8uc29uci5jb3JlLk1JTUVSBG1pbWUSEgoEc2l6ZRgCIAEoA1IEc2l6ZRIpCgRmaWxlGAMgASgLMhMuc29uci5jb3JlLkZpbGVJdGVtSABSBGZpbGUSJgoDdXJsGAQgASgLMhIuc29uci5jb3JlLlVybEl0ZW1IAFIDdXJsEjIKB21lc3NhZ2UYBSABKAsyFi5zb25yLmNvcmUuTWVzc2FnZUl0ZW1IAFIHbWVzc2FnZRI0Cgl0aHVtYm5haWwYBiABKAsyFC5zb25yLmNvcmUuVGh1bWJuYWlsSAFSCXRodW1ibmFpbBI8CglvcGVuR3JhcGgYByABKAsyHC5zb25yLmNvcmUuT3BlbkdyYXBoLlByaW1hcnlIAVIJb3BlbkdyYXBoQgYKBGRhdGFCCQoHcHJldmlldw==');
@$core.Deprecated('Use payloadItemListDescriptor instead')
const PayloadItemList$json = const {
  '1': 'PayloadItemList',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.sonr.core.Payload.Item', '10': 'items'},
    const {'1': 'mime', '3': 2, '4': 1, '5': 11, '6': '.sonr.core.MIME', '10': 'mime'},
    const {'1': 'size', '3': 3, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'lastModified', '3': 4, '4': 1, '5': 3, '10': 'lastModified'},
  ],
};

/// Descriptor for `PayloadItemList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payloadItemListDescriptor = $convert.base64Decode('Cg9QYXlsb2FkSXRlbUxpc3QSLQoFaXRlbXMYASADKAsyFy5zb25yLmNvcmUuUGF5bG9hZC5JdGVtUgVpdGVtcxIjCgRtaW1lGAIgASgLMg8uc29uci5jb3JlLk1JTUVSBG1pbWUSEgoEc2l6ZRgDIAEoA1IEc2l6ZRIiCgxsYXN0TW9kaWZpZWQYBCABKANSDGxhc3RNb2RpZmllZA==');
