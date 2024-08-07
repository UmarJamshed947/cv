import 'package:flutter/material.dart';
import 'dart:math' as math;

class TriangleShape extends StatefulWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;
  final StrokeJoin? strokeJoin;
  final PaintingStyle? paintingStyle;

  TriangleShape(
      { this.width,
        this.height,
        this.strokeWidth,
        this.lineColor,
        this.capStyle,
        this.strokeJoin,
        this.paintingStyle
      });

  @override
  State<TriangleShape> createState() => _TriangleShapeState();
}

class _TriangleShapeState extends State<TriangleShape>
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
            width: widget.width ?? 20,
            height: widget.height ?? 20,
            child: CustomPaint(
              painter: TrianglePainter(
                base: widget.width,
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

class TrianglePainter extends CustomPainter {
  final double? base;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;

  TrianglePainter({
    this.base,
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
      ..style = PaintingStyle.stroke;  // Use stroke style for triangle outline

    final path = Path();
    path.moveTo(size.width / 2, 0); // Top vertex
    path.lineTo(0, size.height); // Bottom left vertex
    path.lineTo(size.width, size.height); // Bottom right vertex
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
