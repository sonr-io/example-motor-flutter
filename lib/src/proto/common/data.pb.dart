///
//  Generated code. Do not modify.
//  source: proto/common/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'core.pb.dart' as $0;

import 'data.pbenum.dart';

export 'data.pbenum.dart';

class FileItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOM<$0.MIME>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime', subBuilder: $0.MIME.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..aOM<Thumbnail>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbnail', subBuilder: Thumbnail.create)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModified', protoName: 'lastModified')
    ..hasRequiredFields = false
  ;

  FileItem._() : super();
  factory FileItem({
    $0.MIME? mime,
    $core.String? name,
    $core.String? path,
    $fixnum.Int64? size,
    Thumbnail? thumbnail,
    $fixnum.Int64? lastModified,
  }) {
    final _result = create();
    if (mime != null) {
      _result.mime = mime;
    }
    if (name != null) {
      _result.name = name;
    }
    if (path != null) {
      _result.path = path;
    }
    if (size != null) {
      _result.size = size;
    }
    if (thumbnail != null) {
      _result.thumbnail = thumbnail;
    }
    if (lastModified != null) {
      _result.lastModified = lastModified;
    }
    return _result;
  }
  factory FileItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileItem clone() => FileItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileItem copyWith(void Function(FileItem) updates) => super.copyWith((message) => updates(message as FileItem)) as FileItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileItem create() => FileItem._();
  FileItem createEmptyInstance() => create();
  static $pb.PbList<FileItem> createRepeated() => $pb.PbList<FileItem>();
  @$core.pragma('dart2js:noInline')
  static FileItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileItem>(create);
  static FileItem? _defaultInstance;

  @$pb.TagNumber(1)
  $0.MIME get mime => $_getN(0);
  @$pb.TagNumber(1)
  set mime($0.MIME v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMime() => $_has(0);
  @$pb.TagNumber(1)
  void clearMime() => clearField(1);
  @$pb.TagNumber(1)
  $0.MIME ensureMime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(4)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => clearField(4);

  @$pb.TagNumber(5)
  Thumbnail get thumbnail => $_getN(4);
  @$pb.TagNumber(5)
  set thumbnail(Thumbnail v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasThumbnail() => $_has(4);
  @$pb.TagNumber(5)
  void clearThumbnail() => clearField(5);
  @$pb.TagNumber(5)
  Thumbnail ensureThumbnail() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get lastModified => $_getI64(5);
  @$pb.TagNumber(6)
  set lastModified($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastModified() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastModified() => clearField(6);
}

class MessageItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOM<$0.MIME>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime', subBuilder: $0.MIME.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subject')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..pc<FileItem>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachments', $pb.PbFieldType.PM, subBuilder: FileItem.create)
    ..hasRequiredFields = false
  ;

  MessageItem._() : super();
  factory MessageItem({
    $0.MIME? mime,
    $core.String? subject,
    $core.String? body,
    $fixnum.Int64? createdAt,
    $core.Iterable<FileItem>? attachments,
  }) {
    final _result = create();
    if (mime != null) {
      _result.mime = mime;
    }
    if (subject != null) {
      _result.subject = subject;
    }
    if (body != null) {
      _result.body = body;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (attachments != null) {
      _result.attachments.addAll(attachments);
    }
    return _result;
  }
  factory MessageItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageItem clone() => MessageItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageItem copyWith(void Function(MessageItem) updates) => super.copyWith((message) => updates(message as MessageItem)) as MessageItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageItem create() => MessageItem._();
  MessageItem createEmptyInstance() => create();
  static $pb.PbList<MessageItem> createRepeated() => $pb.PbList<MessageItem>();
  @$core.pragma('dart2js:noInline')
  static MessageItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageItem>(create);
  static MessageItem? _defaultInstance;

  @$pb.TagNumber(1)
  $0.MIME get mime => $_getN(0);
  @$pb.TagNumber(1)
  set mime($0.MIME v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMime() => $_has(0);
  @$pb.TagNumber(1)
  void clearMime() => clearField(1);
  @$pb.TagNumber(1)
  $0.MIME ensureMime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get subject => $_getSZ(1);
  @$pb.TagNumber(2)
  set subject($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubject() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubject() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createdAt => $_getI64(3);
  @$pb.TagNumber(4)
  set createdAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<FileItem> get attachments => $_getList(4);
}

class UrlItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UrlItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOM<$0.MIME>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime', subBuilder: $0.MIME.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'link')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'site')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'siteName', protoName: 'siteName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<OpenGraph>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openGraph', protoName: 'openGraph', subBuilder: OpenGraph.create)
    ..hasRequiredFields = false
  ;

  UrlItem._() : super();
  factory UrlItem({
    $0.MIME? mime,
    $core.String? link,
    $core.String? title,
    $core.String? site,
    $core.String? siteName,
    $core.String? description,
    OpenGraph? openGraph,
  }) {
    final _result = create();
    if (mime != null) {
      _result.mime = mime;
    }
    if (link != null) {
      _result.link = link;
    }
    if (title != null) {
      _result.title = title;
    }
    if (site != null) {
      _result.site = site;
    }
    if (siteName != null) {
      _result.siteName = siteName;
    }
    if (description != null) {
      _result.description = description;
    }
    if (openGraph != null) {
      _result.openGraph = openGraph;
    }
    return _result;
  }
  factory UrlItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UrlItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UrlItem clone() => UrlItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UrlItem copyWith(void Function(UrlItem) updates) => super.copyWith((message) => updates(message as UrlItem)) as UrlItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UrlItem create() => UrlItem._();
  UrlItem createEmptyInstance() => create();
  static $pb.PbList<UrlItem> createRepeated() => $pb.PbList<UrlItem>();
  @$core.pragma('dart2js:noInline')
  static UrlItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UrlItem>(create);
  static UrlItem? _defaultInstance;

  @$pb.TagNumber(1)
  $0.MIME get mime => $_getN(0);
  @$pb.TagNumber(1)
  set mime($0.MIME v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMime() => $_has(0);
  @$pb.TagNumber(1)
  void clearMime() => clearField(1);
  @$pb.TagNumber(1)
  $0.MIME ensureMime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get link => $_getSZ(1);
  @$pb.TagNumber(2)
  set link($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearLink() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get site => $_getSZ(3);
  @$pb.TagNumber(4)
  set site($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSite() => $_has(3);
  @$pb.TagNumber(4)
  void clearSite() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get siteName => $_getSZ(4);
  @$pb.TagNumber(5)
  set siteName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSiteName() => $_has(4);
  @$pb.TagNumber(5)
  void clearSiteName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  OpenGraph get openGraph => $_getN(6);
  @$pb.TagNumber(7)
  set openGraph(OpenGraph v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOpenGraph() => $_has(6);
  @$pb.TagNumber(7)
  void clearOpenGraph() => clearField(7);
  @$pb.TagNumber(7)
  OpenGraph ensureOpenGraph() => $_ensure(6);
}

enum OpenGraph_Primary_Data {
  image, 
  video, 
  audio, 
  twitter, 
  notSet
}

class OpenGraph_Primary extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, OpenGraph_Primary_Data> _OpenGraph_Primary_DataByTag = {
    2 : OpenGraph_Primary_Data.image,
    3 : OpenGraph_Primary_Data.video,
    4 : OpenGraph_Primary_Data.audio,
    5 : OpenGraph_Primary_Data.twitter,
    0 : OpenGraph_Primary_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Primary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..e<OpenGraph_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: OpenGraph_Type.IMAGE, valueOf: OpenGraph_Type.valueOf, enumValues: OpenGraph_Type.values)
    ..aOM<OpenGraph_Image>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', subBuilder: OpenGraph_Image.create)
    ..aOM<OpenGraph_Video>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'video', subBuilder: OpenGraph_Video.create)
    ..aOM<OpenGraph_Audio>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audio', subBuilder: OpenGraph_Audio.create)
    ..aOM<OpenGraph_Twitter>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'twitter', subBuilder: OpenGraph_Twitter.create)
    ..hasRequiredFields = false
  ;

  OpenGraph_Primary._() : super();
  factory OpenGraph_Primary({
    OpenGraph_Type? type,
    OpenGraph_Image? image,
    OpenGraph_Video? video,
    OpenGraph_Audio? audio,
    OpenGraph_Twitter? twitter,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (image != null) {
      _result.image = image;
    }
    if (video != null) {
      _result.video = video;
    }
    if (audio != null) {
      _result.audio = audio;
    }
    if (twitter != null) {
      _result.twitter = twitter;
    }
    return _result;
  }
  factory OpenGraph_Primary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Primary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Primary clone() => OpenGraph_Primary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Primary copyWith(void Function(OpenGraph_Primary) updates) => super.copyWith((message) => updates(message as OpenGraph_Primary)) as OpenGraph_Primary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Primary create() => OpenGraph_Primary._();
  OpenGraph_Primary createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Primary> createRepeated() => $pb.PbList<OpenGraph_Primary>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Primary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Primary>(create);
  static OpenGraph_Primary? _defaultInstance;

  OpenGraph_Primary_Data whichData() => _OpenGraph_Primary_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  OpenGraph_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(OpenGraph_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  OpenGraph_Image get image => $_getN(1);
  @$pb.TagNumber(2)
  set image(OpenGraph_Image v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => clearField(2);
  @$pb.TagNumber(2)
  OpenGraph_Image ensureImage() => $_ensure(1);

  @$pb.TagNumber(3)
  OpenGraph_Video get video => $_getN(2);
  @$pb.TagNumber(3)
  set video(OpenGraph_Video v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVideo() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideo() => clearField(3);
  @$pb.TagNumber(3)
  OpenGraph_Video ensureVideo() => $_ensure(2);

  @$pb.TagNumber(4)
  OpenGraph_Audio get audio => $_getN(3);
  @$pb.TagNumber(4)
  set audio(OpenGraph_Audio v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAudio() => $_has(3);
  @$pb.TagNumber(4)
  void clearAudio() => clearField(4);
  @$pb.TagNumber(4)
  OpenGraph_Audio ensureAudio() => $_ensure(3);

  @$pb.TagNumber(5)
  OpenGraph_Twitter get twitter => $_getN(4);
  @$pb.TagNumber(5)
  set twitter(OpenGraph_Twitter v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTwitter() => $_has(4);
  @$pb.TagNumber(5)
  void clearTwitter() => clearField(5);
  @$pb.TagNumber(5)
  OpenGraph_Twitter ensureTwitter() => $_ensure(4);
}

class OpenGraph_Image extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Image', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secureUrl', protoName: 'secureUrl')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  OpenGraph_Image._() : super();
  factory OpenGraph_Image({
    $core.String? url,
    $core.String? secureUrl,
    $core.int? width,
    $core.int? height,
    $core.String? type,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (secureUrl != null) {
      _result.secureUrl = secureUrl;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory OpenGraph_Image.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Image.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Image clone() => OpenGraph_Image()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Image copyWith(void Function(OpenGraph_Image) updates) => super.copyWith((message) => updates(message as OpenGraph_Image)) as OpenGraph_Image; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Image create() => OpenGraph_Image._();
  OpenGraph_Image createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Image> createRepeated() => $pb.PbList<OpenGraph_Image>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Image getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Image>(create);
  static OpenGraph_Image? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secureUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set secureUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecureUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecureUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(3);
  @$pb.TagNumber(4)
  set height($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

class OpenGraph_Video extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Video', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secureUrl', protoName: 'secureUrl')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  OpenGraph_Video._() : super();
  factory OpenGraph_Video({
    $core.String? url,
    $core.String? secureUrl,
    $core.int? width,
    $core.int? height,
    $core.String? type,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (secureUrl != null) {
      _result.secureUrl = secureUrl;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory OpenGraph_Video.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Video.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Video clone() => OpenGraph_Video()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Video copyWith(void Function(OpenGraph_Video) updates) => super.copyWith((message) => updates(message as OpenGraph_Video)) as OpenGraph_Video; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Video create() => OpenGraph_Video._();
  OpenGraph_Video createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Video> createRepeated() => $pb.PbList<OpenGraph_Video>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Video getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Video>(create);
  static OpenGraph_Video? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secureUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set secureUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecureUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecureUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(3);
  @$pb.TagNumber(4)
  set height($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

class OpenGraph_Audio extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Audio', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secureUrl', protoName: 'secureUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  OpenGraph_Audio._() : super();
  factory OpenGraph_Audio({
    $core.String? url,
    $core.String? secureUrl,
    $core.String? type,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (secureUrl != null) {
      _result.secureUrl = secureUrl;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory OpenGraph_Audio.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Audio.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Audio clone() => OpenGraph_Audio()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Audio copyWith(void Function(OpenGraph_Audio) updates) => super.copyWith((message) => updates(message as OpenGraph_Audio)) as OpenGraph_Audio; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Audio create() => OpenGraph_Audio._();
  OpenGraph_Audio createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Audio> createRepeated() => $pb.PbList<OpenGraph_Audio>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Audio getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Audio>(create);
  static OpenGraph_Audio? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secureUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set secureUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecureUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecureUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class OpenGraph_Twitter_Player extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Twitter.Player', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stream')
    ..hasRequiredFields = false
  ;

  OpenGraph_Twitter_Player._() : super();
  factory OpenGraph_Twitter_Player({
    $core.String? url,
    $core.int? width,
    $core.int? height,
    $core.String? stream,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (stream != null) {
      _result.stream = stream;
    }
    return _result;
  }
  factory OpenGraph_Twitter_Player.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Twitter_Player.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_Player clone() => OpenGraph_Twitter_Player()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_Player copyWith(void Function(OpenGraph_Twitter_Player) updates) => super.copyWith((message) => updates(message as OpenGraph_Twitter_Player)) as OpenGraph_Twitter_Player; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_Player create() => OpenGraph_Twitter_Player._();
  OpenGraph_Twitter_Player createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Twitter_Player> createRepeated() => $pb.PbList<OpenGraph_Twitter_Player>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_Player getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Twitter_Player>(create);
  static OpenGraph_Twitter_Player? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(2)
  set width($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get stream => $_getSZ(3);
  @$pb.TagNumber(4)
  set stream($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStream() => $_has(3);
  @$pb.TagNumber(4)
  void clearStream() => clearField(4);
}

class OpenGraph_Twitter_IPhone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Twitter.IPhone', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  OpenGraph_Twitter_IPhone._() : super();
  factory OpenGraph_Twitter_IPhone({
    $core.String? name,
    $core.String? id,
    $core.String? url,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (id != null) {
      _result.id = id;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory OpenGraph_Twitter_IPhone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Twitter_IPhone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_IPhone clone() => OpenGraph_Twitter_IPhone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_IPhone copyWith(void Function(OpenGraph_Twitter_IPhone) updates) => super.copyWith((message) => updates(message as OpenGraph_Twitter_IPhone)) as OpenGraph_Twitter_IPhone; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_IPhone create() => OpenGraph_Twitter_IPhone._();
  OpenGraph_Twitter_IPhone createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Twitter_IPhone> createRepeated() => $pb.PbList<OpenGraph_Twitter_IPhone>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_IPhone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Twitter_IPhone>(create);
  static OpenGraph_Twitter_IPhone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class OpenGraph_Twitter_IPad extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Twitter.IPad', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  OpenGraph_Twitter_IPad._() : super();
  factory OpenGraph_Twitter_IPad({
    $core.String? name,
    $core.String? id,
    $core.String? url,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (id != null) {
      _result.id = id;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory OpenGraph_Twitter_IPad.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Twitter_IPad.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_IPad clone() => OpenGraph_Twitter_IPad()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_IPad copyWith(void Function(OpenGraph_Twitter_IPad) updates) => super.copyWith((message) => updates(message as OpenGraph_Twitter_IPad)) as OpenGraph_Twitter_IPad; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_IPad create() => OpenGraph_Twitter_IPad._();
  OpenGraph_Twitter_IPad createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Twitter_IPad> createRepeated() => $pb.PbList<OpenGraph_Twitter_IPad>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_IPad getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Twitter_IPad>(create);
  static OpenGraph_Twitter_IPad? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class OpenGraph_Twitter_GooglePlay extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Twitter.GooglePlay', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  OpenGraph_Twitter_GooglePlay._() : super();
  factory OpenGraph_Twitter_GooglePlay({
    $core.String? name,
    $core.String? id,
    $core.String? url,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (id != null) {
      _result.id = id;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory OpenGraph_Twitter_GooglePlay.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Twitter_GooglePlay.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_GooglePlay clone() => OpenGraph_Twitter_GooglePlay()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter_GooglePlay copyWith(void Function(OpenGraph_Twitter_GooglePlay) updates) => super.copyWith((message) => updates(message as OpenGraph_Twitter_GooglePlay)) as OpenGraph_Twitter_GooglePlay; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_GooglePlay create() => OpenGraph_Twitter_GooglePlay._();
  OpenGraph_Twitter_GooglePlay createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Twitter_GooglePlay> createRepeated() => $pb.PbList<OpenGraph_Twitter_GooglePlay>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter_GooglePlay getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Twitter_GooglePlay>(create);
  static OpenGraph_Twitter_GooglePlay? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class OpenGraph_Twitter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph.Twitter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'card')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'site')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'siteId', protoName: 'siteId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creatorId', protoName: 'creatorId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageAlt', protoName: 'imageAlt')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOM<OpenGraph_Twitter_Player>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'player', subBuilder: OpenGraph_Twitter_Player.create)
    ..aOM<OpenGraph_Twitter_IPhone>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iphone', subBuilder: OpenGraph_Twitter_IPhone.create)
    ..aOM<OpenGraph_Twitter_IPad>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipad', subBuilder: OpenGraph_Twitter_IPad.create)
    ..aOM<OpenGraph_Twitter_GooglePlay>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googlePlay', protoName: 'googlePlay', subBuilder: OpenGraph_Twitter_GooglePlay.create)
    ..hasRequiredFields = false
  ;

  OpenGraph_Twitter._() : super();
  factory OpenGraph_Twitter({
    $core.String? card,
    $core.String? site,
    $core.String? siteId,
    $core.String? creator,
    $core.String? creatorId,
    $core.String? description,
    $core.String? title,
    $core.String? image,
    $core.String? imageAlt,
    $core.String? url,
    OpenGraph_Twitter_Player? player,
    OpenGraph_Twitter_IPhone? iphone,
    OpenGraph_Twitter_IPad? ipad,
    OpenGraph_Twitter_GooglePlay? googlePlay,
  }) {
    final _result = create();
    if (card != null) {
      _result.card = card;
    }
    if (site != null) {
      _result.site = site;
    }
    if (siteId != null) {
      _result.siteId = siteId;
    }
    if (creator != null) {
      _result.creator = creator;
    }
    if (creatorId != null) {
      _result.creatorId = creatorId;
    }
    if (description != null) {
      _result.description = description;
    }
    if (title != null) {
      _result.title = title;
    }
    if (image != null) {
      _result.image = image;
    }
    if (imageAlt != null) {
      _result.imageAlt = imageAlt;
    }
    if (url != null) {
      _result.url = url;
    }
    if (player != null) {
      _result.player = player;
    }
    if (iphone != null) {
      _result.iphone = iphone;
    }
    if (ipad != null) {
      _result.ipad = ipad;
    }
    if (googlePlay != null) {
      _result.googlePlay = googlePlay;
    }
    return _result;
  }
  factory OpenGraph_Twitter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph_Twitter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter clone() => OpenGraph_Twitter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph_Twitter copyWith(void Function(OpenGraph_Twitter) updates) => super.copyWith((message) => updates(message as OpenGraph_Twitter)) as OpenGraph_Twitter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter create() => OpenGraph_Twitter._();
  OpenGraph_Twitter createEmptyInstance() => create();
  static $pb.PbList<OpenGraph_Twitter> createRepeated() => $pb.PbList<OpenGraph_Twitter>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph_Twitter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph_Twitter>(create);
  static OpenGraph_Twitter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get card => $_getSZ(0);
  @$pb.TagNumber(1)
  set card($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearCard() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get site => $_getSZ(1);
  @$pb.TagNumber(2)
  set site($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSite() => $_has(1);
  @$pb.TagNumber(2)
  void clearSite() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get siteId => $_getSZ(2);
  @$pb.TagNumber(3)
  set siteId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSiteId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSiteId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get creator => $_getSZ(3);
  @$pb.TagNumber(4)
  set creator($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreator() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreator() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get creatorId => $_getSZ(4);
  @$pb.TagNumber(5)
  set creatorId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatorId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatorId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get image => $_getSZ(7);
  @$pb.TagNumber(8)
  set image($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasImage() => $_has(7);
  @$pb.TagNumber(8)
  void clearImage() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get imageAlt => $_getSZ(8);
  @$pb.TagNumber(9)
  set imageAlt($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasImageAlt() => $_has(8);
  @$pb.TagNumber(9)
  void clearImageAlt() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get url => $_getSZ(9);
  @$pb.TagNumber(10)
  set url($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearUrl() => clearField(10);

  @$pb.TagNumber(11)
  OpenGraph_Twitter_Player get player => $_getN(10);
  @$pb.TagNumber(11)
  set player(OpenGraph_Twitter_Player v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPlayer() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlayer() => clearField(11);
  @$pb.TagNumber(11)
  OpenGraph_Twitter_Player ensurePlayer() => $_ensure(10);

  @$pb.TagNumber(12)
  OpenGraph_Twitter_IPhone get iphone => $_getN(11);
  @$pb.TagNumber(12)
  set iphone(OpenGraph_Twitter_IPhone v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasIphone() => $_has(11);
  @$pb.TagNumber(12)
  void clearIphone() => clearField(12);
  @$pb.TagNumber(12)
  OpenGraph_Twitter_IPhone ensureIphone() => $_ensure(11);

  @$pb.TagNumber(13)
  OpenGraph_Twitter_IPad get ipad => $_getN(12);
  @$pb.TagNumber(13)
  set ipad(OpenGraph_Twitter_IPad v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasIpad() => $_has(12);
  @$pb.TagNumber(13)
  void clearIpad() => clearField(13);
  @$pb.TagNumber(13)
  OpenGraph_Twitter_IPad ensureIpad() => $_ensure(12);

  @$pb.TagNumber(14)
  OpenGraph_Twitter_GooglePlay get googlePlay => $_getN(13);
  @$pb.TagNumber(14)
  set googlePlay(OpenGraph_Twitter_GooglePlay v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasGooglePlay() => $_has(13);
  @$pb.TagNumber(14)
  void clearGooglePlay() => clearField(14);
  @$pb.TagNumber(14)
  OpenGraph_Twitter_GooglePlay ensureGooglePlay() => $_ensure(13);
}

class OpenGraph extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenGraph', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aOM<OpenGraph_Primary>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primary', subBuilder: OpenGraph_Primary.create)
    ..pc<OpenGraph_Image>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: OpenGraph_Image.create)
    ..pc<OpenGraph_Video>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'videos', $pb.PbFieldType.PM, subBuilder: OpenGraph_Video.create)
    ..pc<OpenGraph_Audio>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: OpenGraph_Audio.create)
    ..aOM<OpenGraph_Twitter>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'twitter', subBuilder: OpenGraph_Twitter.create)
    ..hasRequiredFields = false
  ;

  OpenGraph._() : super();
  factory OpenGraph({
    OpenGraph_Primary? primary,
    $core.Iterable<OpenGraph_Image>? images,
    $core.Iterable<OpenGraph_Video>? videos,
    $core.Iterable<OpenGraph_Audio>? audios,
    OpenGraph_Twitter? twitter,
  }) {
    final _result = create();
    if (primary != null) {
      _result.primary = primary;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (videos != null) {
      _result.videos.addAll(videos);
    }
    if (audios != null) {
      _result.audios.addAll(audios);
    }
    if (twitter != null) {
      _result.twitter = twitter;
    }
    return _result;
  }
  factory OpenGraph.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenGraph.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenGraph clone() => OpenGraph()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenGraph copyWith(void Function(OpenGraph) updates) => super.copyWith((message) => updates(message as OpenGraph)) as OpenGraph; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenGraph create() => OpenGraph._();
  OpenGraph createEmptyInstance() => create();
  static $pb.PbList<OpenGraph> createRepeated() => $pb.PbList<OpenGraph>();
  @$core.pragma('dart2js:noInline')
  static OpenGraph getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenGraph>(create);
  static OpenGraph? _defaultInstance;

  @$pb.TagNumber(1)
  OpenGraph_Primary get primary => $_getN(0);
  @$pb.TagNumber(1)
  set primary(OpenGraph_Primary v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrimary() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrimary() => clearField(1);
  @$pb.TagNumber(1)
  OpenGraph_Primary ensurePrimary() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<OpenGraph_Image> get images => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<OpenGraph_Video> get videos => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<OpenGraph_Audio> get audios => $_getList(3);

  @$pb.TagNumber(5)
  OpenGraph_Twitter get twitter => $_getN(4);
  @$pb.TagNumber(5)
  set twitter(OpenGraph_Twitter v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTwitter() => $_has(4);
  @$pb.TagNumber(5)
  void clearTwitter() => clearField(5);
  @$pb.TagNumber(5)
  OpenGraph_Twitter ensureTwitter() => $_ensure(4);
}

class Thumbnail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Thumbnail', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buffer', $pb.PbFieldType.OY)
    ..aOM<$0.MIME>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime', subBuilder: $0.MIME.create)
    ..hasRequiredFields = false
  ;

  Thumbnail._() : super();
  factory Thumbnail({
    $fixnum.Int64? size,
    $core.List<$core.int>? buffer,
    $0.MIME? mime,
  }) {
    final _result = create();
    if (size != null) {
      _result.size = size;
    }
    if (buffer != null) {
      _result.buffer = buffer;
    }
    if (mime != null) {
      _result.mime = mime;
    }
    return _result;
  }
  factory Thumbnail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Thumbnail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Thumbnail clone() => Thumbnail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Thumbnail copyWith(void Function(Thumbnail) updates) => super.copyWith((message) => updates(message as Thumbnail)) as Thumbnail; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Thumbnail create() => Thumbnail._();
  Thumbnail createEmptyInstance() => create();
  static $pb.PbList<Thumbnail> createRepeated() => $pb.PbList<Thumbnail>();
  @$core.pragma('dart2js:noInline')
  static Thumbnail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Thumbnail>(create);
  static Thumbnail? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get size => $_getI64(0);
  @$pb.TagNumber(1)
  set size($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get buffer => $_getN(1);
  @$pb.TagNumber(2)
  set buffer($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuffer() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuffer() => clearField(2);

  @$pb.TagNumber(3)
  $0.MIME get mime => $_getN(2);
  @$pb.TagNumber(3)
  set mime($0.MIME v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMime() => $_has(2);
  @$pb.TagNumber(3)
  void clearMime() => clearField(3);
  @$pb.TagNumber(3)
  $0.MIME ensureMime() => $_ensure(2);
}

enum Payload_Item_Data {
  file, 
  url, 
  message, 
  notSet
}

enum Payload_Item_Preview {
  thumbnail, 
  openGraph, 
  notSet
}

class Payload_Item extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Payload_Item_Data> _Payload_Item_DataByTag = {
    3 : Payload_Item_Data.file,
    4 : Payload_Item_Data.url,
    5 : Payload_Item_Data.message,
    0 : Payload_Item_Data.notSet
  };
  static const $core.Map<$core.int, Payload_Item_Preview> _Payload_Item_PreviewByTag = {
    6 : Payload_Item_Preview.thumbnail,
    7 : Payload_Item_Preview.openGraph,
    0 : Payload_Item_Preview.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Payload.Item', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5])
    ..oo(1, [6, 7])
    ..aOM<$0.MIME>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime', subBuilder: $0.MIME.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..aOM<FileItem>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', subBuilder: FileItem.create)
    ..aOM<UrlItem>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url', subBuilder: UrlItem.create)
    ..aOM<MessageItem>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: MessageItem.create)
    ..aOM<Thumbnail>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbnail', subBuilder: Thumbnail.create)
    ..aOM<OpenGraph_Primary>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openGraph', protoName: 'openGraph', subBuilder: OpenGraph_Primary.create)
    ..hasRequiredFields = false
  ;

  Payload_Item._() : super();
  factory Payload_Item({
    $0.MIME? mime,
    $fixnum.Int64? size,
    FileItem? file,
    UrlItem? url,
    MessageItem? message,
    Thumbnail? thumbnail,
    OpenGraph_Primary? openGraph,
  }) {
    final _result = create();
    if (mime != null) {
      _result.mime = mime;
    }
    if (size != null) {
      _result.size = size;
    }
    if (file != null) {
      _result.file = file;
    }
    if (url != null) {
      _result.url = url;
    }
    if (message != null) {
      _result.message = message;
    }
    if (thumbnail != null) {
      _result.thumbnail = thumbnail;
    }
    if (openGraph != null) {
      _result.openGraph = openGraph;
    }
    return _result;
  }
  factory Payload_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payload_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Payload_Item clone() => Payload_Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Payload_Item copyWith(void Function(Payload_Item) updates) => super.copyWith((message) => updates(message as Payload_Item)) as Payload_Item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Payload_Item create() => Payload_Item._();
  Payload_Item createEmptyInstance() => create();
  static $pb.PbList<Payload_Item> createRepeated() => $pb.PbList<Payload_Item>();
  @$core.pragma('dart2js:noInline')
  static Payload_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Payload_Item>(create);
  static Payload_Item? _defaultInstance;

  Payload_Item_Data whichData() => _Payload_Item_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  Payload_Item_Preview whichPreview() => _Payload_Item_PreviewByTag[$_whichOneof(1)]!;
  void clearPreview() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $0.MIME get mime => $_getN(0);
  @$pb.TagNumber(1)
  set mime($0.MIME v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMime() => $_has(0);
  @$pb.TagNumber(1)
  void clearMime() => clearField(1);
  @$pb.TagNumber(1)
  $0.MIME ensureMime() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get size => $_getI64(1);
  @$pb.TagNumber(2)
  set size($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);

  @$pb.TagNumber(3)
  FileItem get file => $_getN(2);
  @$pb.TagNumber(3)
  set file(FileItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearFile() => clearField(3);
  @$pb.TagNumber(3)
  FileItem ensureFile() => $_ensure(2);

  @$pb.TagNumber(4)
  UrlItem get url => $_getN(3);
  @$pb.TagNumber(4)
  set url(UrlItem v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearUrl() => clearField(4);
  @$pb.TagNumber(4)
  UrlItem ensureUrl() => $_ensure(3);

  @$pb.TagNumber(5)
  MessageItem get message => $_getN(4);
  @$pb.TagNumber(5)
  set message(MessageItem v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
  @$pb.TagNumber(5)
  MessageItem ensureMessage() => $_ensure(4);

  @$pb.TagNumber(6)
  Thumbnail get thumbnail => $_getN(5);
  @$pb.TagNumber(6)
  set thumbnail(Thumbnail v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasThumbnail() => $_has(5);
  @$pb.TagNumber(6)
  void clearThumbnail() => clearField(6);
  @$pb.TagNumber(6)
  Thumbnail ensureThumbnail() => $_ensure(5);

  @$pb.TagNumber(7)
  OpenGraph_Primary get openGraph => $_getN(6);
  @$pb.TagNumber(7)
  set openGraph(OpenGraph_Primary v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOpenGraph() => $_has(6);
  @$pb.TagNumber(7)
  void clearOpenGraph() => clearField(7);
  @$pb.TagNumber(7)
  OpenGraph_Primary ensureOpenGraph() => $_ensure(6);
}

class Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..pc<Payload_Item>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Payload_Item.create)
    ..aOM<$0.Profile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', subBuilder: $0.Profile.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt')
    ..hasRequiredFields = false
  ;

  Payload._() : super();
  factory Payload({
    $core.Iterable<Payload_Item>? items,
    $0.Profile? owner,
    $fixnum.Int64? size,
    $fixnum.Int64? createdAt,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (size != null) {
      _result.size = size;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Payload clone() => Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Payload copyWith(void Function(Payload) updates) => super.copyWith((message) => updates(message as Payload)) as Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Payload create() => Payload._();
  Payload createEmptyInstance() => create();
  static $pb.PbList<Payload> createRepeated() => $pb.PbList<Payload>();
  @$core.pragma('dart2js:noInline')
  static Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Payload>(create);
  static Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Payload_Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $0.Profile get owner => $_getN(1);
  @$pb.TagNumber(2)
  set owner($0.Profile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);
  @$pb.TagNumber(2)
  $0.Profile ensureOwner() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get size => $_getI64(2);
  @$pb.TagNumber(3)
  set size($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createdAt => $_getI64(3);
  @$pb.TagNumber(4)
  set createdAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
}

class PayloadItemList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PayloadItemList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sonr.core'), createEmptyInstance: create)
    ..pc<Payload_Item>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Payload_Item.create)
    ..aOM<$0.MIME>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime', subBuilder: $0.MIME.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModified', protoName: 'lastModified')
    ..hasRequiredFields = false
  ;

  PayloadItemList._() : super();
  factory PayloadItemList({
    $core.Iterable<Payload_Item>? items,
    $0.MIME? mime,
    $fixnum.Int64? size,
    $fixnum.Int64? lastModified,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    if (mime != null) {
      _result.mime = mime;
    }
    if (size != null) {
      _result.size = size;
    }
    if (lastModified != null) {
      _result.lastModified = lastModified;
    }
    return _result;
  }
  factory PayloadItemList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadItemList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadItemList clone() => PayloadItemList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadItemList copyWith(void Function(PayloadItemList) updates) => super.copyWith((message) => updates(message as PayloadItemList)) as PayloadItemList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayloadItemList create() => PayloadItemList._();
  PayloadItemList createEmptyInstance() => create();
  static $pb.PbList<PayloadItemList> createRepeated() => $pb.PbList<PayloadItemList>();
  @$core.pragma('dart2js:noInline')
  static PayloadItemList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadItemList>(create);
  static PayloadItemList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Payload_Item> get items => $_getList(0);

  @$pb.TagNumber(2)
  $0.MIME get mime => $_getN(1);
  @$pb.TagNumber(2)
  set mime($0.MIME v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMime() => $_has(1);
  @$pb.TagNumber(2)
  void clearMime() => clearField(2);
  @$pb.TagNumber(2)
  $0.MIME ensureMime() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get size => $_getI64(2);
  @$pb.TagNumber(3)
  set size($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastModified => $_getI64(3);
  @$pb.TagNumber(4)
  set lastModified($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastModified() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastModified() => clearField(4);
}

