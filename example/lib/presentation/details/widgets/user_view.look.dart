// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// LookGenerator
// **************************************************************************

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:global_example/domain/entities/user_entity.dart';
import 'package:global_example/domain/entities/user_example.dart';
import 'package:global_example/presentation/details/widgets/user_view.dart';
import 'package:look/look.dart';

void main() => runApp(const LookUserViewApp());

class LookUserViewApp extends StatelessWidget {
  const LookUserViewApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Looking UserView',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: userViewBuilder(),
      );
}
