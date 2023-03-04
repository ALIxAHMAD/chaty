///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'api.pbenum.dart';

export 'api.pbenum.dart';

class JoinRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName')
    ..hasRequiredFields = false
  ;

  JoinRequest._() : super();
  factory JoinRequest({
    $core.String? userName,
  }) {
    final _result = create();
    if (userName != null) {
      _result.userName = userName;
    }
    return _result;
  }
  factory JoinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinRequest clone() => JoinRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinRequest copyWith(void Function(JoinRequest) updates) => super.copyWith((message) => updates(message as JoinRequest)) as JoinRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinRequest create() => JoinRequest._();
  JoinRequest createEmptyInstance() => create();
  static $pb.PbList<JoinRequest> createRepeated() => $pb.PbList<JoinRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinRequest>(create);
  static JoinRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userName => $_getSZ(0);
  @$pb.TagNumber(1)
  set userName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserName() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserName() => clearField(1);
}

class JoinResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  JoinResponse._() : super();
  factory JoinResponse({
    $core.String? userName,
    $core.String? userId,
  }) {
    final _result = create();
    if (userName != null) {
      _result.userName = userName;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory JoinResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinResponse clone() => JoinResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinResponse copyWith(void Function(JoinResponse) updates) => super.copyWith((message) => updates(message as JoinResponse)) as JoinResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinResponse create() => JoinResponse._();
  JoinResponse createEmptyInstance() => create();
  static $pb.PbList<JoinResponse> createRepeated() => $pb.PbList<JoinResponse>();
  @$core.pragma('dart2js:noInline')
  static JoinResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinResponse>(create);
  static JoinResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userName => $_getSZ(0);
  @$pb.TagNumber(1)
  set userName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserName() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class ChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChatMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  ChatMessage._() : super();
  factory ChatMessage({
    $core.String? senderName,
    $core.String? text,
  }) {
    final _result = create();
    if (senderName != null) {
      _result.senderName = senderName;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory ChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessage clone() => ChatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessage copyWith(void Function(ChatMessage) updates) => super.copyWith((message) => updates(message as ChatMessage)) as ChatMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatMessage create() => ChatMessage._();
  ChatMessage createEmptyInstance() => create();
  static $pb.PbList<ChatMessage> createRepeated() => $pb.PbList<ChatMessage>();
  @$core.pragma('dart2js:noInline')
  static ChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessage>(create);
  static ChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get senderName => $_getSZ(0);
  @$pb.TagNumber(1)
  set senderName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class MessageUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRead')
    ..hasRequiredFields = false
  ;

  MessageUpdate._() : super();
  factory MessageUpdate({
    $core.bool? isRead,
  }) {
    final _result = create();
    if (isRead != null) {
      _result.isRead = isRead;
    }
    return _result;
  }
  factory MessageUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageUpdate clone() => MessageUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageUpdate copyWith(void Function(MessageUpdate) updates) => super.copyWith((message) => updates(message as MessageUpdate)) as MessageUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageUpdate create() => MessageUpdate._();
  MessageUpdate createEmptyInstance() => create();
  static $pb.PbList<MessageUpdate> createRepeated() => $pb.PbList<MessageUpdate>();
  @$core.pragma('dart2js:noInline')
  static MessageUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageUpdate>(create);
  static MessageUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isRead => $_getBF(0);
  @$pb.TagNumber(1)
  set isRead($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsRead() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsRead() => clearField(1);
}

class MessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOM<ChatMessage>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: ChatMessage.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  MessageRequest._() : super();
  factory MessageRequest({
    $core.String? userId,
    ChatMessage? message,
    $core.String? requestId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory MessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageRequest clone() => MessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageRequest copyWith(void Function(MessageRequest) updates) => super.copyWith((message) => updates(message as MessageRequest)) as MessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageRequest create() => MessageRequest._();
  MessageRequest createEmptyInstance() => create();
  static $pb.PbList<MessageRequest> createRepeated() => $pb.PbList<MessageRequest>();
  @$core.pragma('dart2js:noInline')
  static MessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageRequest>(create);
  static MessageRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  ChatMessage get message => $_getN(1);
  @$pb.TagNumber(3)
  set message(ChatMessage v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  ChatMessage ensureMessage() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(4)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(4)
  void clearRequestId() => clearField(4);
}

class MessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isOk')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  MessageResponse._() : super();
  factory MessageResponse({
    $core.bool? isOk,
    $core.String? requestId,
  }) {
    final _result = create();
    if (isOk != null) {
      _result.isOk = isOk;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory MessageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageResponse clone() => MessageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageResponse copyWith(void Function(MessageResponse) updates) => super.copyWith((message) => updates(message as MessageResponse)) as MessageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageResponse create() => MessageResponse._();
  MessageResponse createEmptyInstance() => create();
  static $pb.PbList<MessageResponse> createRepeated() => $pb.PbList<MessageResponse>();
  @$core.pragma('dart2js:noInline')
  static MessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageResponse>(create);
  static MessageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOk => $_getBF(0);
  @$pb.TagNumber(1)
  set isOk($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOk() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get requestId => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String? userId,
    $core.String? userName,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);
}

class Users extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Users', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..pc<User>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  Users._() : super();
  factory Users({
    $core.Iterable<User>? users,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    return _result;
  }
  factory Users.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Users.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Users clone() => Users()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Users copyWith(void Function(Users) updates) => super.copyWith((message) => updates(message as Users)) as Users; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Users create() => Users._();
  Users createEmptyInstance() => create();
  static $pb.PbList<Users> createRepeated() => $pb.PbList<Users>();
  @$core.pragma('dart2js:noInline')
  static Users getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Users>(create);
  static Users? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get users => $_getList(0);
}

class UserEvents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserEvents', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..e<UserEvents_Events>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', $pb.PbFieldType.OE, defaultOrMaker: UserEvents_Events.joined, valueOf: UserEvents_Events.valueOf, enumValues: UserEvents_Events.values)
    ..hasRequiredFields = false
  ;

  UserEvents._() : super();
  factory UserEvents({
    $core.String? userId,
    UserEvents_Events? events,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (events != null) {
      _result.events = events;
    }
    return _result;
  }
  factory UserEvents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserEvents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserEvents clone() => UserEvents()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserEvents copyWith(void Function(UserEvents) updates) => super.copyWith((message) => updates(message as UserEvents)) as UserEvents; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserEvents create() => UserEvents._();
  UserEvents createEmptyInstance() => create();
  static $pb.PbList<UserEvents> createRepeated() => $pb.PbList<UserEvents>();
  @$core.pragma('dart2js:noInline')
  static UserEvents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserEvents>(create);
  static UserEvents? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  UserEvents_Events get events => $_getN(1);
  @$pb.TagNumber(2)
  set events(UserEvents_Events v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvents() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvents() => clearField(2);
}

class TypingState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TypingState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isTyping')
    ..hasRequiredFields = false
  ;

  TypingState._() : super();
  factory TypingState({
    $core.String? userId,
    $core.bool? isTyping,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (isTyping != null) {
      _result.isTyping = isTyping;
    }
    return _result;
  }
  factory TypingState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypingState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypingState clone() => TypingState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypingState copyWith(void Function(TypingState) updates) => super.copyWith((message) => updates(message as TypingState)) as TypingState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TypingState create() => TypingState._();
  TypingState createEmptyInstance() => create();
  static $pb.PbList<TypingState> createRepeated() => $pb.PbList<TypingState>();
  @$core.pragma('dart2js:noInline')
  static TypingState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypingState>(create);
  static TypingState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isTyping => $_getBF(1);
  @$pb.TagNumber(2)
  set isTyping($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsTyping() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsTyping() => clearField(2);
}

class ListUsers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListUsers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  ListUsers._() : super();
  factory ListUsers({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory ListUsers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUsers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListUsers clone() => ListUsers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListUsers copyWith(void Function(ListUsers) updates) => super.copyWith((message) => updates(message as ListUsers)) as ListUsers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUsers create() => ListUsers._();
  ListUsers createEmptyInstance() => create();
  static $pb.PbList<ListUsers> createRepeated() => $pb.PbList<ListUsers>();
  @$core.pragma('dart2js:noInline')
  static ListUsers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUsers>(create);
  static ListUsers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

enum ClientEvents_Event {
  joinRequest, 
  messageRequest, 
  typingState, 
  listUsers, 
  notSet
}

class ClientEvents extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientEvents_Event> _ClientEvents_EventByTag = {
    1 : ClientEvents_Event.joinRequest,
    2 : ClientEvents_Event.messageRequest,
    3 : ClientEvents_Event.typingState,
    4 : ClientEvents_Event.listUsers,
    0 : ClientEvents_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientEvents', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<JoinRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinRequest', protoName: 'joinRequest', subBuilder: JoinRequest.create)
    ..aOM<MessageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageRequest', protoName: 'messageRequest', subBuilder: MessageRequest.create)
    ..aOM<TypingState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typingState', protoName: 'typing_State', subBuilder: TypingState.create)
    ..aOM<ListUsers>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listUsers', subBuilder: ListUsers.create)
    ..hasRequiredFields = false
  ;

  ClientEvents._() : super();
  factory ClientEvents({
    JoinRequest? joinRequest,
    MessageRequest? messageRequest,
    TypingState? typingState,
    ListUsers? listUsers,
  }) {
    final _result = create();
    if (joinRequest != null) {
      _result.joinRequest = joinRequest;
    }
    if (messageRequest != null) {
      _result.messageRequest = messageRequest;
    }
    if (typingState != null) {
      _result.typingState = typingState;
    }
    if (listUsers != null) {
      _result.listUsers = listUsers;
    }
    return _result;
  }
  factory ClientEvents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientEvents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientEvents clone() => ClientEvents()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientEvents copyWith(void Function(ClientEvents) updates) => super.copyWith((message) => updates(message as ClientEvents)) as ClientEvents; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientEvents create() => ClientEvents._();
  ClientEvents createEmptyInstance() => create();
  static $pb.PbList<ClientEvents> createRepeated() => $pb.PbList<ClientEvents>();
  @$core.pragma('dart2js:noInline')
  static ClientEvents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientEvents>(create);
  static ClientEvents? _defaultInstance;

  ClientEvents_Event whichEvent() => _ClientEvents_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  JoinRequest get joinRequest => $_getN(0);
  @$pb.TagNumber(1)
  set joinRequest(JoinRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJoinRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearJoinRequest() => clearField(1);
  @$pb.TagNumber(1)
  JoinRequest ensureJoinRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  MessageRequest get messageRequest => $_getN(1);
  @$pb.TagNumber(2)
  set messageRequest(MessageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageRequest() => clearField(2);
  @$pb.TagNumber(2)
  MessageRequest ensureMessageRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  TypingState get typingState => $_getN(2);
  @$pb.TagNumber(3)
  set typingState(TypingState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTypingState() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypingState() => clearField(3);
  @$pb.TagNumber(3)
  TypingState ensureTypingState() => $_ensure(2);

  @$pb.TagNumber(4)
  ListUsers get listUsers => $_getN(3);
  @$pb.TagNumber(4)
  set listUsers(ListUsers v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasListUsers() => $_has(3);
  @$pb.TagNumber(4)
  void clearListUsers() => clearField(4);
  @$pb.TagNumber(4)
  ListUsers ensureListUsers() => $_ensure(3);
}

enum ServerEvents_Event {
  joinResponse, 
  messageResponse, 
  users, 
  userEvents, 
  chatMessage, 
  typingState, 
  messageUpdate, 
  notSet
}

class ServerEvents extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerEvents_Event> _ServerEvents_EventByTag = {
    1 : ServerEvents_Event.joinResponse,
    2 : ServerEvents_Event.messageResponse,
    3 : ServerEvents_Event.users,
    4 : ServerEvents_Event.userEvents,
    5 : ServerEvents_Event.chatMessage,
    6 : ServerEvents_Event.typingState,
    7 : ServerEvents_Event.messageUpdate,
    0 : ServerEvents_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerEvents', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chaty'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOM<JoinResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinResponse', protoName: 'joinResponse', subBuilder: JoinResponse.create)
    ..aOM<MessageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageResponse', protoName: 'messageResponse', subBuilder: MessageResponse.create)
    ..aOM<Users>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', subBuilder: Users.create)
    ..aOM<UserEvents>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userEvents', subBuilder: UserEvents.create)
    ..aOM<ChatMessage>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatMessage', subBuilder: ChatMessage.create)
    ..aOM<TypingState>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typingState', subBuilder: TypingState.create)
    ..aOM<MessageUpdate>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageUpdate', subBuilder: MessageUpdate.create)
    ..hasRequiredFields = false
  ;

  ServerEvents._() : super();
  factory ServerEvents({
    JoinResponse? joinResponse,
    MessageResponse? messageResponse,
    Users? users,
    UserEvents? userEvents,
    ChatMessage? chatMessage,
    TypingState? typingState,
    MessageUpdate? messageUpdate,
  }) {
    final _result = create();
    if (joinResponse != null) {
      _result.joinResponse = joinResponse;
    }
    if (messageResponse != null) {
      _result.messageResponse = messageResponse;
    }
    if (users != null) {
      _result.users = users;
    }
    if (userEvents != null) {
      _result.userEvents = userEvents;
    }
    if (chatMessage != null) {
      _result.chatMessage = chatMessage;
    }
    if (typingState != null) {
      _result.typingState = typingState;
    }
    if (messageUpdate != null) {
      _result.messageUpdate = messageUpdate;
    }
    return _result;
  }
  factory ServerEvents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerEvents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerEvents clone() => ServerEvents()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerEvents copyWith(void Function(ServerEvents) updates) => super.copyWith((message) => updates(message as ServerEvents)) as ServerEvents; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerEvents create() => ServerEvents._();
  ServerEvents createEmptyInstance() => create();
  static $pb.PbList<ServerEvents> createRepeated() => $pb.PbList<ServerEvents>();
  @$core.pragma('dart2js:noInline')
  static ServerEvents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerEvents>(create);
  static ServerEvents? _defaultInstance;

  ServerEvents_Event whichEvent() => _ServerEvents_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  JoinResponse get joinResponse => $_getN(0);
  @$pb.TagNumber(1)
  set joinResponse(JoinResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJoinResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearJoinResponse() => clearField(1);
  @$pb.TagNumber(1)
  JoinResponse ensureJoinResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  MessageResponse get messageResponse => $_getN(1);
  @$pb.TagNumber(2)
  set messageResponse(MessageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageResponse() => clearField(2);
  @$pb.TagNumber(2)
  MessageResponse ensureMessageResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  Users get users => $_getN(2);
  @$pb.TagNumber(3)
  set users(Users v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsers() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsers() => clearField(3);
  @$pb.TagNumber(3)
  Users ensureUsers() => $_ensure(2);

  @$pb.TagNumber(4)
  UserEvents get userEvents => $_getN(3);
  @$pb.TagNumber(4)
  set userEvents(UserEvents v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserEvents() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserEvents() => clearField(4);
  @$pb.TagNumber(4)
  UserEvents ensureUserEvents() => $_ensure(3);

  @$pb.TagNumber(5)
  ChatMessage get chatMessage => $_getN(4);
  @$pb.TagNumber(5)
  set chatMessage(ChatMessage v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasChatMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearChatMessage() => clearField(5);
  @$pb.TagNumber(5)
  ChatMessage ensureChatMessage() => $_ensure(4);

  @$pb.TagNumber(6)
  TypingState get typingState => $_getN(5);
  @$pb.TagNumber(6)
  set typingState(TypingState v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTypingState() => $_has(5);
  @$pb.TagNumber(6)
  void clearTypingState() => clearField(6);
  @$pb.TagNumber(6)
  TypingState ensureTypingState() => $_ensure(5);

  @$pb.TagNumber(7)
  MessageUpdate get messageUpdate => $_getN(6);
  @$pb.TagNumber(7)
  set messageUpdate(MessageUpdate v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMessageUpdate() => $_has(6);
  @$pb.TagNumber(7)
  void clearMessageUpdate() => clearField(7);
  @$pb.TagNumber(7)
  MessageUpdate ensureMessageUpdate() => $_ensure(6);
}

