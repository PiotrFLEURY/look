import 'package:example/domain/repositories/user_repository.dart';
import 'package:example/presentation/users/states/users_state.dart';
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
    } on Exception {
      emit(UsersState.error());
    }
  }
}
