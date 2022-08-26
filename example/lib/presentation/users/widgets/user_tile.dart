import 'package:example/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:look/look.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  final UserEntity user;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.thumbnailPicture),
      ),
      title: Text(user.firstName),
      subtitle: Text(user.email),
      onTap: onTap,
    );
  }
}

@look
class UserTilePreview extends StatelessWidget {
  const UserTilePreview({Key? key}) : super(key: key);

  static const _user = UserEntity(
    title: 'Mr',
    firstName: 'John',
    lastName: 'Doe',
    email: 'john.doe@example.com',
    largePicture: 'https://picsum.photos/200',
    mediumPicture: 'https://picsum.photos/200',
    thumbnailPicture: 'https://picsum.photos/200',
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: UserTile(
        user: _user,
        onTap: () {},
      ),
    );
  }
}
