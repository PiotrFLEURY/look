import 'package:example/main.dart';
import 'package:look/look.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'app_golden_test.lookgolden.dart';

@LookGolden(
  type: MyApp,
  name: 'goldens/MyApp_golden.png',
)
main() => lookGoldens();
