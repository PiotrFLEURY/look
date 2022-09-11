import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:example/pages/home.dart';
import 'package:look/look.dart';

part 'home_page_test.lookgolden.dart';

@LookGolden(type: MyHomePage)
main() => lookGoldens();
