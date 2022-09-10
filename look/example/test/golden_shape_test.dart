import 'package:example/pages/widgets/shape.dart';
import 'package:example/theme.dart';
import 'package:look/look.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'golden_shape_test.lookgolden.dart';

@LookGolden(
  type: DynamicShape,
  builder: dynamicShapeBuilder,
  lightTheme: lightTheme,
  darkTheme: darkTheme,
  name: 'goldens/DynamicShape_golden.png',
  dimensions: ['400x600', '800x600', '800x1200', '1600x1200'],
)
main() => lookGoldens();
