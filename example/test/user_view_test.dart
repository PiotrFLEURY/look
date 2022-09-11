import 'package:example/presentation/details/widgets/user_view.dart';
import 'package:look/look.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'user_view_test.lookgolden.dart';

@LookGolden(
  type: UserView,
  builder: userViewBuilder,
  name: "goldens/user_view.png",
  dimensions: ['800x600'],
)
main() => lookGoldens();
