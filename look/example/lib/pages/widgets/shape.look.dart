// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// LookGenerator
// **************************************************************************

import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:look/look.dart';
import 'package:look_example/pages/widgets/shape.dart';
import 'package:look_example/theme.dart';

void main() => runApp(const LookDynamicShapeApp());

class LookDynamicShapeApp extends StatelessWidget {
  const LookDynamicShapeApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Looking DynamicShape',
        theme: lightTheme(),
        home: dynamicShapeBuilder(),
      );
}
