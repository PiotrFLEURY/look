import 'package:example/domain/entities/user_entity.dart';
import 'package:example/domain/entities/user_example.dart';
import 'package:example/presentation/users/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:look/look.dart';

@Look('lookBuilder')
class UserList extends StatelessWidget {
  const UserList({
    Key? key,
    required this.title,
    required this.users,
    required this.onUserTap,
  }) : super(key: key);

  final String title;
  final List<UserEntity> users;
  final void Function(UserEntity) onUserTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return UserTile(
            user: user,
            onTap: () => onUserTap(user),
          );
        },
      ),
    );
  }
}

lookBuilder() => UserList(
      title: 'fake user list with look',
      users: userListExample,
      onUserTap: (_) {},
    );
