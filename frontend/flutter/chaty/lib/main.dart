import 'package:chaty/core/client/client.dart';
import 'package:chaty/core/client/grpc/api.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc/grpc.dart';

import 'core/client/client_impl.dart';
import 'env.dart';
import 'features/chat/data/repositories/repository_impl.dart';
import 'features/chat/domain/repositories/repository.dart';
import 'features/chat/presentation/pages/chat/chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final apiClient = ChatServiceClient(
    ClientChannel(
      Environment.grpcUrl,
      port: Environment.grpcPort,
      options: ChannelOptions(
        credentials: Environment.grpcSecure
            ? const ChannelCredentials.secure()
            : const ChannelCredentials.insecure(),
      ),
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<ChatRepository>(
      create: (context) {
        return ChatRepositoryImpl(
          client: ChatClientImpl(client: apiClient),
        );
      },
      child: const MaterialApp(
        home: ChatPage(),
      ),
    );
  }
}
