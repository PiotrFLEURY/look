import 'package:example/domain/entities/user_entity.dart';
import 'package:example/presentation/app/states/app_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial());

  void setUserCount(int userCount) {
    emit(state.copyWith(userCount: userCount));
  }

  void selectUser(UserEntity user) {
    emit(state.copyWith(selectedUser: user));
  }
}

extension AppCubitX on BuildContext {
  AppState get appState => read<AppCubit>().state;
}
