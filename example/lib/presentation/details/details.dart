import 'package:global_example/presentation/app/blocs/app_cubit.dart';
import 'package:global_example/presentation/app/states/app_state.dart';
import 'package:global_example/presentation/details/widgets/user_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return UserView(user: state.selectedUser!);
      },
    );
  }
}
