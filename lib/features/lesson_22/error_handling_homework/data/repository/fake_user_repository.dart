import 'package:flutter2/features/lesson_22/error_handling_homework/data/repository/entity/user_entity.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/errors/custom_server_error.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/presentation/cubit/user_profile_state.dart';

class FakeUserRepository {
  Future<UserEntity> getUserProfile(bool shouldFail) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));

      if (shouldFail) {
        throw Exception('Server is temporarily unavailable');
      }

      return UserEntity(id: '1', name: 'Test User');
    } catch (e) {
      print('Error in FakeUserRepository.getUserProfile $e');

      throw CustomServerError(
          errorMessage: e.toString(),
          status: UserProfileStatus.error
      );
    }
  }
}
