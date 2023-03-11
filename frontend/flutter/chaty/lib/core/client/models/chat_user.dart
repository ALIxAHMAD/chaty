// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chaty/features/chat/domain/entities/chat_user.dart';

import '../../enums/enums.dart';

class UserModel {
  final String userName;
  final String id;
  UserModel({
    required this.userName,
    required this.id,
  });
}

class UsersModel {
  final List<UserModel> users;
  UsersModel({
    required this.users,
  });

  Users toEntityUsers() {
    return Users(
      users: users
          .map(
            (e) => User(
              id: e.id,
              userName: e.userName,
              isTyping: false,
            ),
          )
          .toList(),
    );
  }
}

class UserEventsModel {
  final String userName;
  final String userId;
  final Events events;
  UserEventsModel({
    required this.userName,
    required this.userId,
    required this.events,
  });
}

class TypingStateModel {
  final String userId;
  final bool isTyping;
  TypingStateModel({
    required this.userId,
    required this.isTyping,
  });
}

class JoinRequestModel {
  final String userName;
  JoinRequestModel({
    required this.userName,
  });
}

class JoinResponseModel {
  final String userName;
  final String userId;
  JoinResponseModel({
    required this.userName,
    required this.userId,
  });
}
