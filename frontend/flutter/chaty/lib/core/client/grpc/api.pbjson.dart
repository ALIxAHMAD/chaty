///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use joinRequestDescriptor instead')
const JoinRequest$json = const {
  '1': 'JoinRequest',
  '2': const [
    const {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
  ],
};

/// Descriptor for `JoinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinRequestDescriptor = $convert.base64Decode('CgtKb2luUmVxdWVzdBIaCgh1c2VyTmFtZRgBIAEoCVIIdXNlck5hbWU=');
@$core.Deprecated('Use joinResponseDescriptor instead')
const JoinResponse$json = const {
  '1': 'JoinResponse',
  '2': const [
    const {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `JoinResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinResponseDescriptor = $convert.base64Decode('CgxKb2luUmVzcG9uc2USGgoIdXNlck5hbWUYASABKAlSCHVzZXJOYW1lEhYKBnVzZXJJZBgCIAEoCVIGdXNlcklk');
@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = const {
  '1': 'ChatMessage',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'userName', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'id', '3': 4, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode('CgtDaGF0TWVzc2FnZRIWCgZ1c2VySWQYASABKAlSBnVzZXJJZBIaCgh1c2VyTmFtZRgCIAEoCVIIdXNlck5hbWUSEgoEdGV4dBgDIAEoCVIEdGV4dBIOCgJpZBgEIAEoCVICaWQ=');
@$core.Deprecated('Use messageUpdateDescriptor instead')
const MessageUpdate$json = const {
  '1': 'MessageUpdate',
  '2': const [
    const {'1': 'isRead', '3': 1, '4': 1, '5': 8, '10': 'isRead'},
  ],
};

/// Descriptor for `MessageUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageUpdateDescriptor = $convert.base64Decode('Cg1NZXNzYWdlVXBkYXRlEhYKBmlzUmVhZBgBIAEoCFIGaXNSZWFk');
@$core.Deprecated('Use readMessageDescriptor instead')
const ReadMessage$json = const {
  '1': 'ReadMessage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'messageId', '3': 2, '4': 1, '5': 9, '10': 'messageId'},
  ],
};

/// Descriptor for `ReadMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readMessageDescriptor = $convert.base64Decode('CgtSZWFkTWVzc2FnZRIOCgJpZBgBIAEoCVICaWQSHAoJbWVzc2FnZUlkGAIgASgJUgltZXNzYWdlSWQ=');
@$core.Deprecated('Use messageResponseDescriptor instead')
const MessageResponse$json = const {
  '1': 'MessageResponse',
  '2': const [
    const {'1': 'isOk', '3': 1, '4': 1, '5': 8, '10': 'isOk'},
    const {'1': 'requestId', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

/// Descriptor for `MessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageResponseDescriptor = $convert.base64Decode('Cg9NZXNzYWdlUmVzcG9uc2USEgoEaXNPaxgBIAEoCFIEaXNPaxIcCglyZXF1ZXN0SWQYAiABKAlSCXJlcXVlc3RJZA==');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'userName', '3': 2, '4': 1, '5': 9, '10': 'userName'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEhoKCHVzZXJOYW1lGAIgASgJUgh1c2VyTmFtZQ==');
@$core.Deprecated('Use usersDescriptor instead')
const Users$json = const {
  '1': 'Users',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.chaty.User', '10': 'users'},
  ],
};

/// Descriptor for `Users`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersDescriptor = $convert.base64Decode('CgVVc2VycxIhCgV1c2VycxgBIAMoCzILLmNoYXR5LlVzZXJSBXVzZXJz');
@$core.Deprecated('Use userEventsDescriptor instead')
const UserEvents$json = const {
  '1': 'UserEvents',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'events', '3': 2, '4': 1, '5': 14, '6': '.chaty.UserEvents.Events', '10': 'events'},
    const {'1': 'userName', '3': 3, '4': 1, '5': 9, '10': 'userName'},
  ],
  '4': const [UserEvents_Events$json],
};

@$core.Deprecated('Use userEventsDescriptor instead')
const UserEvents_Events$json = const {
  '1': 'Events',
  '2': const [
    const {'1': 'joined', '2': 0},
    const {'1': 'left', '2': 1},
  ],
};

/// Descriptor for `UserEvents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userEventsDescriptor = $convert.base64Decode('CgpVc2VyRXZlbnRzEhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEjAKBmV2ZW50cxgCIAEoDjIYLmNoYXR5LlVzZXJFdmVudHMuRXZlbnRzUgZldmVudHMSGgoIdXNlck5hbWUYAyABKAlSCHVzZXJOYW1lIh4KBkV2ZW50cxIKCgZqb2luZWQQABIICgRsZWZ0EAE=');
@$core.Deprecated('Use typingStateDescriptor instead')
const TypingState$json = const {
  '1': 'TypingState',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'isTyping', '3': 2, '4': 1, '5': 8, '10': 'isTyping'},
  ],
};

/// Descriptor for `TypingState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typingStateDescriptor = $convert.base64Decode('CgtUeXBpbmdTdGF0ZRIWCgZ1c2VySWQYASABKAlSBnVzZXJJZBIaCghpc1R5cGluZxgCIAEoCFIIaXNUeXBpbmc=');
@$core.Deprecated('Use listUsersDescriptor instead')
const ListUsers$json = const {
  '1': 'ListUsers',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `ListUsers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUsersDescriptor = $convert.base64Decode('CglMaXN0VXNlcnMSFgoGdXNlcklkGAEgASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use clientEventsDescriptor instead')
const ClientEvents$json = const {
  '1': 'ClientEvents',
  '2': const [
    const {'1': 'joinRequest', '3': 1, '4': 1, '5': 11, '6': '.chaty.JoinRequest', '9': 0, '10': 'joinRequest'},
    const {'1': 'chatMessage', '3': 2, '4': 1, '5': 11, '6': '.chaty.ChatMessage', '9': 0, '10': 'chatMessage'},
    const {'1': 'typingState', '3': 3, '4': 1, '5': 11, '6': '.chaty.TypingState', '9': 0, '10': 'typingState'},
    const {'1': 'listUsers', '3': 4, '4': 1, '5': 11, '6': '.chaty.ListUsers', '9': 0, '10': 'listUsers'},
    const {'1': 'readMessage', '3': 5, '4': 1, '5': 11, '6': '.chaty.ReadMessage', '9': 0, '10': 'readMessage'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

/// Descriptor for `ClientEvents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientEventsDescriptor = $convert.base64Decode('CgxDbGllbnRFdmVudHMSNgoLam9pblJlcXVlc3QYASABKAsyEi5jaGF0eS5Kb2luUmVxdWVzdEgAUgtqb2luUmVxdWVzdBI2CgtjaGF0TWVzc2FnZRgCIAEoCzISLmNoYXR5LkNoYXRNZXNzYWdlSABSC2NoYXRNZXNzYWdlEjYKC3R5cGluZ1N0YXRlGAMgASgLMhIuY2hhdHkuVHlwaW5nU3RhdGVIAFILdHlwaW5nU3RhdGUSMAoJbGlzdFVzZXJzGAQgASgLMhAuY2hhdHkuTGlzdFVzZXJzSABSCWxpc3RVc2VycxI2CgtyZWFkTWVzc2FnZRgFIAEoCzISLmNoYXR5LlJlYWRNZXNzYWdlSABSC3JlYWRNZXNzYWdlQgcKBWV2ZW50');
@$core.Deprecated('Use serverEventsDescriptor instead')
const ServerEvents$json = const {
  '1': 'ServerEvents',
  '2': const [
    const {'1': 'joinResponse', '3': 1, '4': 1, '5': 11, '6': '.chaty.JoinResponse', '9': 0, '10': 'joinResponse'},
    const {'1': 'messageResponse', '3': 2, '4': 1, '5': 11, '6': '.chaty.MessageResponse', '9': 0, '10': 'messageResponse'},
    const {'1': 'users', '3': 3, '4': 1, '5': 11, '6': '.chaty.Users', '9': 0, '10': 'users'},
    const {'1': 'userEvents', '3': 4, '4': 1, '5': 11, '6': '.chaty.UserEvents', '9': 0, '10': 'userEvents'},
    const {'1': 'chatMessage', '3': 5, '4': 1, '5': 11, '6': '.chaty.ChatMessage', '9': 0, '10': 'chatMessage'},
    const {'1': 'typingState', '3': 6, '4': 1, '5': 11, '6': '.chaty.TypingState', '9': 0, '10': 'typingState'},
    const {'1': 'messageUpdate', '3': 7, '4': 1, '5': 11, '6': '.chaty.MessageUpdate', '9': 0, '10': 'messageUpdate'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

/// Descriptor for `ServerEvents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverEventsDescriptor = $convert.base64Decode('CgxTZXJ2ZXJFdmVudHMSOQoMam9pblJlc3BvbnNlGAEgASgLMhMuY2hhdHkuSm9pblJlc3BvbnNlSABSDGpvaW5SZXNwb25zZRJCCg9tZXNzYWdlUmVzcG9uc2UYAiABKAsyFi5jaGF0eS5NZXNzYWdlUmVzcG9uc2VIAFIPbWVzc2FnZVJlc3BvbnNlEiQKBXVzZXJzGAMgASgLMgwuY2hhdHkuVXNlcnNIAFIFdXNlcnMSMwoKdXNlckV2ZW50cxgEIAEoCzIRLmNoYXR5LlVzZXJFdmVudHNIAFIKdXNlckV2ZW50cxI2CgtjaGF0TWVzc2FnZRgFIAEoCzISLmNoYXR5LkNoYXRNZXNzYWdlSABSC2NoYXRNZXNzYWdlEjYKC3R5cGluZ1N0YXRlGAYgASgLMhIuY2hhdHkuVHlwaW5nU3RhdGVIAFILdHlwaW5nU3RhdGUSPAoNbWVzc2FnZVVwZGF0ZRgHIAEoCzIULmNoYXR5Lk1lc3NhZ2VVcGRhdGVIAFINbWVzc2FnZVVwZGF0ZUIHCgVldmVudA==');
