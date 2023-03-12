import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/chat_message.dart';
import '../../../cubit/chat_cubit.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      bloc: BlocProvider.of<ChatCubit>(context),
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.messages.messages.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final message = state.messages.messages[index];
            return MessageTile(message: message, userId: state.userId);
          },
        );
      },
    );
  }
}

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    required this.message,
    required this.userId,
  }) : super(key: key);

  final ChatMessage message;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 10,
        bottom: 10,
      ),
      child: Align(
        alignment: (message.senderId != userId
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3, bottom: 2),
              child: Text(
                message.senderId != userId ? message.senderName : "",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: (message.senderId != userId
                    ? Colors.grey.shade200
                    : Colors.blue[200]),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.content,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  message.senderId == userId
                      ? Icon(
                          message.isSent ? Icons.check : Icons.access_time,
                          size: 13,
                        )
                      : SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
