import 'package:flutter/material.dart';
import 'package:look/look.dart';

class ChipView extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  const ChipView({
    super.key,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

@look
class ChipViewLook extends StatelessWidget {
  const ChipViewLook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ChipView(
        text: 'Sample text',
      ),
    );
  }
}
