// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/repository.dart';
import '../../cubit/chat_cubit.dart';
import 'join.dart';
import 'components/room.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final ChatCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = ChatCubit(
      repository: RepositoryProvider.of<ChatRepository>(context),
    );
    cubit.connect();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocBuilder<ChatCubit, ChatState>(
        bloc: cubit,
        builder: (context, state) {
          if (state.userId == "") {
            return const JoinPage();
          }
          return const RoomPage();
        },
      ),
    );
  }
}
