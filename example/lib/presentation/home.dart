import 'package:flutter/material.dart';
import 'package:look/look.dart';

@Look(
  arguments: {
    'title': 'Looking Home with generated preview',
  },
)
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
