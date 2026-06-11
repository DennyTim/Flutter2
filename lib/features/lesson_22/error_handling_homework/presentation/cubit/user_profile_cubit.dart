import 'package:flutter2/features/lesson_22/error_handling_homework/data/repository/fake_user_repository.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/presentation/cubit/user_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this.repository) : super(UserProfileLoading());

  final FakeUserRepository repository;

  Future<void> loadUserProfile({bool shouldFail = true}) async {
    emit(UserProfileLoading());

    final user = await repository.getUserProfile(shouldFail);

    emit(UserProfileLoaded(user));
  }
}
