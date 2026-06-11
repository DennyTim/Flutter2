import 'package:flutter2/features/lesson_22/error_handling_homework/data/repository/entity/user_entity.dart';

sealed class UserProfileState {}

final class UserProfileLoading implements UserProfileState {}

final class UserProfileLoaded implements UserProfileState {
  UserProfileLoaded(this.user);

  final UserEntity user;
}

final class UserProfileError implements UserProfileState {
  UserProfileError(this.status, this.errorMessage);

  final UserProfileStatus status;
  final String errorMessage;
}

enum UserProfileStatus { initial, loading, loaded, error }
