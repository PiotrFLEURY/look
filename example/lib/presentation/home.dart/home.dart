import 'package:example/presentation/home.dart/blocs/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:example/presentation/app/blocs/app_cubit.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                const Text('Please type user count'),
                TextField(onChanged: (value) {
                  context.userCount = int.parse(value);
                }),
                ElevatedButton(
                  onPressed: () {
                    context.read<AppCubit>().setUserCount(context.userCount);
                    GoRouter.of(context).go('/users');
                  },
                  child: const Text('Get Users'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
