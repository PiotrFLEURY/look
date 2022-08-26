import 'package:example/domain/entities/user_entity.dart';
import 'package:example/presentation/users/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:look/look.dart';

class UserList extends StatelessWidget {
  const UserList({
    Key? key,
    required this.users,
    required this.onUserTap,
  }) : super(key: key);

  final List<UserEntity> users;
  final void Function(UserEntity) onUserTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${users.length} users found'),
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

@look
class UserListPreview extends StatelessWidget {
  const UserListPreview({Key? key}) : super(key: key);

  static const _user = UserEntity(
    title: 'Mr',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john.doe@example.com',
    largePicture: 'https://picsum.photos/200',
    mediumPicture: 'https://picsum.photos/200',
    thumbnailPicture: 'https://picsum.photos/200',
  );

  static const _users = [
    _user,
    _user,
    _user,
    _user,
    _user,
    _user,
    _user,
  ];

  @override
  Widget build(BuildContext context) {
    return UserList(users: _users, onUserTap: (_) {});
  }
}
