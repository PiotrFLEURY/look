import 'package:example/presentation/users/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:look/look.dart';

part 'user_tile_test.lookgolden.dart';

@LookGolden(
  type: UserTile,
  builder: userTilePreview,
)
main() => lookGoldens();
