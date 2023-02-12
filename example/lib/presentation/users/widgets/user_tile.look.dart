// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// LookGenerator
// **************************************************************************

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:global_example/domain/entities/user_entity.dart';
import 'package:global_example/domain/entities/user_example.dart';
import 'package:global_example/presentation/users/widgets/user_tile.dart';
import 'package:look/look.dart';

void main() => runApp(const LookUserTileApp());

class LookUserTileApp extends StatelessWidget {
  const LookUserTileApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Looking UserTile',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: userTilePreview(),
      );
}
