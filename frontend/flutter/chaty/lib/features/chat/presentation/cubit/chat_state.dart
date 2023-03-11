// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'chat_cubit.dart';

class ChatState extends Equatable {
  final String userId;
  final String userName;
  final ChatMessages messages;
  final Users users;
  const ChatState({
    required this.userId,
    required this.userName,
    required this.messages,
    required this.users,
  });

  @override
  List<Object> get props => [userId, userName, users, messages];

  factory ChatState.initial() {
    return ChatState(
      userName: "",
      userId: "",
      messages: ChatMessages(messages: []),
      users: Users(users: []),
    );
  }

  ChatState copyWith({
    String? userId,
    String? userName,
    ChatMessages? messages,
    Users? users,
  }) {
    return ChatState(
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      messages: messages ?? this.messages,
      users: users ?? this.users,
    );
  }
}
