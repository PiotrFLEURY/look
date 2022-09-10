import 'package:example/domain/entities/user_entity.dart';
import 'package:example/domain/entities/user_example.dart';
import 'package:flutter/material.dart';
import 'package:look/look.dart';

@Look('userTilePreview')
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
        backgroundImage: user.thumbnailPicture.isEmpty
            ? null
            : NetworkImage(user.thumbnailPicture),
      ),
      title: Text(user.firstName),
      subtitle: Text(user.email),
      onTap: onTap,
    );
  }
}

userTilePreview() => Material(
      child: UserTile(
        user: userExample.copyWith(thumbnailPicture: ''),
        onTap: () {},
      ),
    );
