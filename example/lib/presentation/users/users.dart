import 'package:global_example/presentation/app/blocs/app_cubit.dart';
import 'package:global_example/presentation/users/blocs/users_cubit.dart';
import 'package:global_example/presentation/users/states/users_state.dart';
import 'package:global_example/presentation/users/widgets/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(
        context.read(),
        context.read<AppCubit>().state.userCount!,
      )..fetchUsers(),
      child: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state is UsersStateLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UsersStateLoaded) {
            return UserList(
              title: '${state.users.length} users found',
              users: state.users,
              onUserTap: (user) {
                context.read<AppCubit>().selectUser(user);
                GoRouter.of(context).go('/users/${user.hashCode}');
              },
            );
          } else {
            return const Text('Error');
          }
        },
      ),
    );
  }
}
