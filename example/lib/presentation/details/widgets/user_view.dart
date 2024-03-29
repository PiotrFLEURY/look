import 'package:global_example/domain/entities/user_entity.dart';
import 'package:global_example/domain/entities/user_example.dart';
import 'package:flutter/material.dart';
import 'package:look/look.dart';

@Look(builder: userViewBuilder)
class UserView extends StatelessWidget {
  const UserView({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: user.largePicture.isEmpty
                    ? null
                    : NetworkImage(user.largePicture),
                radius: 100,
              ),
              const SizedBox(height: 48.0),
              Text(
                '${user.firstName} ${user.lastName}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 48.0),
              Text(
                user.email,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

userViewBuilder() => UserView(
      user: userExample.copyWith(largePicture: ''),
    );
