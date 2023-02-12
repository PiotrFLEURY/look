import 'package:flutter/material.dart';
import 'package:look/look.dart';

@Look(builder: lookBuilder)
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.text,
    this.textColor = Colors.white,
    this.textSize = 16.0,
    required this.onTap,
  });

  final Color color;
  final String text;
  final Color textColor;
  final double textSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 4.0,
      borderRadius: BorderRadius.circular(4.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: textColor,
                  fontSize: textSize,
                ),
          ),
        ),
      ),
    );
  }
}

Widget lookBuilder() => Center(
      child: CustomButton(
        color: Colors.blue,
        text: 'Click me!',
        textSize: 18.0,
        onTap: () {
          debugPrint('Button tapped!');
        },
      ),
    );
