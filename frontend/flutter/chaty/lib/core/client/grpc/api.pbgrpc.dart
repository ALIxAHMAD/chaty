///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'api.pb.dart' as $0;
export 'api.pb.dart';

class ChatServiceClient extends $grpc.Client {
  static final _$connect = $grpc.ClientMethod<$0.ClientEvents, $0.ServerEvents>(
      '/chaty.ChatService/Connect',
      ($0.ClientEvents value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ServerEvents.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ServerEvents> connect(
      $async.Stream<$0.ClientEvents> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connect, request, options: options);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chaty.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ClientEvents, $0.ServerEvents>(
        'Connect',
        connect,
        true,
        true,
        ($core.List<$core.int> value) => $0.ClientEvents.fromBuffer(value),
        ($0.ServerEvents value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ServerEvents> connect(
      $grpc.ServiceCall call, $async.Stream<$0.ClientEvents> request);
}
