import 'dart:math';

import 'package:flutter/material.dart';
import 'package:look/look.dart';
import 'package:look_example/theme.dart';

Widget dynamicShapeBuilder() => Material(
      child: Center(
        child: DynamicShape(
          faces: 8,
          size: const Size(400, 400),
          onPressed: () {},
        ),
      ),
    );

@Look(
  builder: dynamicShapeBuilder,
  theme: lightTheme,
)
class DynamicShape extends StatelessWidget {
  final int faces;
  final Size size;
  final VoidCallback onPressed;

  const DynamicShape({
    super.key,
    required this.faces,
    required this.size,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: CustomPaint(
        size: size,
        painter: _DynamicShapePainter(
          faces,
          Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class _DynamicShapePainter extends CustomPainter {
  final int faces;
  final Color color;

  _DynamicShapePainter(this.faces, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;

    canvas.drawPath(_getShapePath(size), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  Path _getShapePath(Size size) {
    var path = Path();
    var radius = size.width / 2;
    var center = Offset(radius, radius);

    var angle = 2 * pi / faces;
    var startAngle = pi / 2;

    for (var i = 0; i < faces; i++) {
      var x = radius * cos(startAngle + i * angle);
      var y = radius * sin(startAngle + i * angle);

      if (i == 0) {
        path.moveTo(x + center.dx, y + center.dy);
      } else {
        path.lineTo(x + center.dx, y + center.dy);
      }
    }

    path.close();

    return path;
  }
}
