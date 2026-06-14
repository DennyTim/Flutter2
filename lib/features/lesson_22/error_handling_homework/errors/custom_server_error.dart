import 'package:flutter2/features/lesson_22/error_handling_homework/presentation/cubit/user_profile_state.dart';

class CustomServerError implements Exception {
  CustomServerError({
    required this.errorMessage,
    required this.status
  });

  final String errorMessage;
  final UserProfileStatus status;

  @override
  String toString() => 'CustomServerError (Status $status): $errorMessage';
}
