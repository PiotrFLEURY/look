import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  void userCountChanged(int count) {
    emit(count);
  }
}

extension HomeCubitX on BuildContext {
  int get userCount => read<HomeCubit>().state;

  set userCount(int count) {
    read<HomeCubit>().userCountChanged(count);
  }
}
