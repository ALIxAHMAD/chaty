// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

class User {
  final String userName;
  final String id;
  User({
    required this.userName,
    required this.id,
  });
}

class Users {
  final List<User> users;
  Users({
    required this.users,
  });
}

enum Events {
  joined,
  leaved,
}

class UserEvents {
  final String userId;
  final Events events;
  UserEvents({
    required this.userId,
    required this.events,
  });
}

class TypingState {
  final bool isTyping;
  TypingState({
    required this.isTyping,
  });
}

class JoinResponse {
  final String userName;
  final String userId;

  JoinResponse(this.userName, this.userId);
}
