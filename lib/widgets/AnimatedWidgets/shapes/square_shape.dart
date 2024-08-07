import 'package:flutter/material.dart';
import 'dart:math' as math;

class SquareShape extends StatefulWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;

  SquareShape(
      {this.width,
        this.height,
        this.strokeWidth,
        this.lineColor});

  @override
  State<SquareShape> createState() => _SquareShapeState();
}

class _SquareShapeState extends State<SquareShape>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      reverseDuration: Duration(seconds: 10),
      duration: Duration(seconds: 10),
    )..forward();

    animation =
        Tween<double>(begin: math.pi, end: -math.pi).animate(controller);
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reset();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: animation.value,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: widget.height,
            width: widget.width,
            child: CustomPaint(
              painter: SquarePainter(
                strokeWidth: widget.strokeWidth,
                lineColor: widget.lineColor,
              ),
            ),
          ),
        );
      },
    );
  }
}

class SquarePainter extends CustomPainter {
  final double? strokeWidth;
  final Color? lineColor;

  SquarePainter({this.lineColor, this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 4
      ..color = lineColor ?? Colors.red
      ..style = PaintingStyle.stroke;  // Change to stroke style to draw the outline of the square

    final path = Path();

    // Scale factor to reduce the size of the square
    final scale = 0.2;
    final offsetX = size.width * (1 - scale) / 2;
    final offsetY = size.height * (1 - scale) / 2;

    // Move and draw the scaled square
    path.addRect(Rect.fromLTWH(offsetX, offsetY, size.width * scale, size.height * scale));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
