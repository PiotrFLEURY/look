import 'package:global_example/domain/repositories/user_repository.dart';
import 'package:global_example/presentation/users/states/users_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersCubit extends Cubit<UsersState> {
  final UserRepository _userRepository;

  UsersCubit(this._userRepository, int userCount)
      : super(UsersState.loading(userCount));

  Future<void> fetchUsers() async {
    try {
      final loadingState = state as UsersStateLoading;
      final users = await _userRepository.getUsers(loadingState.userCount);

      emit(UsersState.loaded(loadingState.userCount, users));
    } catch (e) {
      debugPrint('Error fetching users $e');
      emit(UsersState.error());
    }
  }
}
