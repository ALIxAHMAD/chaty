import 'package:chaty/features/chat/domain/entities/chat_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/chat_cubit.dart';

class UsersDrawer extends StatefulWidget {
  const UsersDrawer({
    Key? key,
  }) : super(key: key);
  @override
  State<UsersDrawer> createState() => _UsersDrawerState();
}

class _UsersDrawerState extends State<UsersDrawer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      bloc: BlocProvider.of<ChatCubit>(context),
      builder: (context, state) {
        return Drawer(
          child: ListView.builder(
            itemCount: state.users.users.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const UsersDrawerHeader();
              }
              final user = state.users.users[index - 1];
              return UserTile(
                user: user,
              );
            },
          ),
        );
      },
    );
  }
}

class UsersDrawerHeader extends StatelessWidget {
  const UsersDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 64,
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'Current online users',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Text(user.userName),
            subtitle: Text("id:${user.id}"),
            trailing: user.isTyping
                ? const Text(
                    "typing ...",
                    style: TextStyle(color: Colors.blueGrey),
                  )
                : null),
        const Divider(),
      ],
    );
  }
}
