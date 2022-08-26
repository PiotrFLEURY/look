import 'package:example/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.freezed.dart';

@freezed
class UsersState with _$UsersState {
  factory UsersState.loading(int userCount) = UsersStateLoading;

  // loaded
  factory UsersState.loaded(int userCount, List<UserEntity> users) =
      UsersStateLoaded;

  // error
  factory UsersState.error() = UsersStateError;
}
