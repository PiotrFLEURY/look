import 'package:look_example/pages/home.dart';
import 'package:look_example/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'look Demo',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const MyHomePage(),
    );
  }
}
