// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../../core/enums/enums.dart';

class User {
  final String userName;
  final String id;
  final bool isTyping;
  User({
    required this.userName,
    required this.id,
    required this.isTyping,
  });
}

class Users {
  final List<User> users;
  Users({
    required this.users,
  });
}

class UserEvents {
  final String userId;
  final String userName;
  final Events events;
  UserEvents({
    required this.userId,
    required this.userName,
    required this.events,
  });
}

class TypingState {
  final String userId;
  final bool isTyping;
  TypingState({
    required this.userId,
    required this.isTyping,
  });
}

class JoinResponse {
  final String userName;
  final String userId;
  JoinResponse({
    required this.userName,
    required this.userId,
  });
}
