///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UserEvents_Events extends $pb.ProtobufEnum {
  static const UserEvents_Events joined = UserEvents_Events._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'joined');
  static const UserEvents_Events left = UserEvents_Events._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'left');

  static const $core.List<UserEvents_Events> values = <UserEvents_Events> [
    joined,
    left,
  ];

  static final $core.Map<$core.int, UserEvents_Events> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserEvents_Events? valueOf($core.int value) => _byValue[value];

  const UserEvents_Events._($core.int v, $core.String n) : super(v, n);
}

