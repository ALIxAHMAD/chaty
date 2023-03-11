import 'package:chaty/features/chat/presentation/pages/chat/components/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/chat_cubit.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  late final ChatCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = BlocProvider.of<ChatCubit>(context);
    cubit.listUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const UsersDrawer(),
      body: Text(cubit.state.userId),
    );
  }
}
