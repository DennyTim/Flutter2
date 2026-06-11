import 'package:flutter2/features/lesson_22/error_handling_homework/data/repository/fake_user_repository.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/errors/custom_server_error.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/presentation/cubit/user_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this.repository) : super(UserProfileLoading());

  final FakeUserRepository repository;

  Future<void> loadUserProfile({bool shouldFail = true}) async {
    emit(UserProfileLoading());
    try {
      final user = await repository.getUserProfile(shouldFail);

      emit(UserProfileLoaded(user));
    } on CustomServerError catch (e) {
      print(
        'Error in UserProfileCubit ${e.errorMessage} with status ${e.status}',
      );

      emit(UserProfileError(e.status, e.errorMessage));
    } catch (e) {
      emit(UserProfileError(UserProfileStatus.error, e.toString()));

      rethrow;
    }
  }
}
