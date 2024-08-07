import 'package:flutter/material.dart';
import 'dart:math' as math;

class RectangleShape extends StatefulWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;
  final StrokeJoin? strokeJoin;
  final PaintingStyle? paintingStyle;

  RectangleShape(
      { this.width,
        this.height,
        this.strokeWidth,
        this.lineColor,
        this.capStyle,
        this.strokeJoin,
        this.paintingStyle
      });

  @override
  State<RectangleShape> createState() => _RectangleShapeState();
}

class _RectangleShapeState extends State<RectangleShape>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
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
            width: widget.width ?? 100,
            height: widget.height ?? 100,
            child: CustomPaint(
              painter: RectanglePainter(
                width: widget.width,
                height: widget.height,
                capStyle: widget.capStyle,
                lineColor: widget.lineColor,
                strokeWidth: widget.strokeWidth,
              ),
            ),
          ),
        );
      },
    );
  }
}

class RectanglePainter extends CustomPainter {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;

  RectanglePainter({
    this.width,
    this.height,
    this.strokeWidth,
    this.lineColor,
    this.capStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 10
      ..color = lineColor ?? Colors.red
      ..style = PaintingStyle.stroke;  // Use stroke style for rectangle outline

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
