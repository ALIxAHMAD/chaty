import 'package:chaty/features/chat/presentation/pages/chat/components/messaages_list.dart';
import 'package:chaty/features/chat/presentation/pages/chat/components/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/chat_cubit.dart';
import 'bottom_text_box.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  late final ChatCubit cubit;
  final FocusNode _focus = FocusNode();
  @override
  void initState() {
    super.initState();
    cubit = BlocProvider.of<ChatCubit>(context);
    cubit.listUsers();
    _focus.addListener(() {
      cubit.updateTypingState(_focus.hasFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController messageTextController = TextEditingController();
    return Scaffold(
      drawer: const UsersDrawer(),
      appBar: AppBar(
        title: const Text("Chat Room"),
      ),
      body: Stack(
        children: <Widget>[
          const MessageList(),
          BottomTextBox(
            focusNode: _focus,
            controller: messageTextController,
          ),
        ],
      ),
    );
  }
}
