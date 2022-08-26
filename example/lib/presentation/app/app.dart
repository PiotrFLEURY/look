import 'package:dio/dio.dart';
import 'package:example/data/repositories/user_repository_impl.dart';
import 'package:example/data/sources/random_user_api.dart';
import 'package:example/domain/repositories/user_repository.dart';
import 'package:example/presentation/app/blocs/app_cubit.dart';
import 'package:example/presentation/details/details.dart';
import 'package:example/presentation/home.dart/home.dart';
import 'package:example/presentation/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepositoryImpl(RandomUserApi(Dio())),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()),
        ],
        child: MaterialApp.router(
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          title: 'Look Example',
        ),
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/users',
      builder: (BuildContext context, GoRouterState state) {
        return const UsersPage();
      },
      routes: <GoRoute>[
        GoRoute(
          path: ':id',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsPage();
          },
        ),
      ],
    ),
  ],
);
