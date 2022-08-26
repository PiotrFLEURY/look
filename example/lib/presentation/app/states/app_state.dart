import 'package:example/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    int? userCount,
    UserEntity? selectedUser,
  }) = _AppState;

  factory AppState.initial() => const AppState();
}
