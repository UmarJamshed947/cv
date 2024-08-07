import 'package:flutter/material.dart';
import 'dart:math' as math;

class ArrowShape extends StatefulWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;
  final StrokeJoin? strokeJoin;
  final PaintingStyle? paintingStyle;

  ArrowShape({
    this.width,
    this.height,
    this.strokeWidth,
    this.lineColor,
    this.capStyle,
    this.strokeJoin,
    this.paintingStyle,
  });

  @override
  State<ArrowShape> createState() => _ArrowShapeState();
}

class _ArrowShapeState extends State<ArrowShape>
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

    animation = Tween<double>(begin: math.pi, end: -math.pi).animate(controller);
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reset();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: animation.value,
          child: Container(
            width: widget.width ?? 30,
            height: widget.height ?? 30,
            child: CustomPaint(
              painter: ArrowPainter(
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

class ArrowPainter extends CustomPainter {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;

  ArrowPainter({
    this.width,
    this.height,
    this.strokeWidth,
    this.lineColor,
    this.capStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 4
      ..color = lineColor ?? Colors.red
      ..style = PaintingStyle.stroke;

    final path = Path();

    // Define the arrow shape like a greater-than sign (>)
    path.moveTo(size.width * 0.2, size.height * 0.1); // Start top-left
    path.lineTo(size.width * 0.8, size.height * 0.5); // Middle-right
    path.lineTo(size.width * 0.2, size.height * 0.9); // Bottom-left

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
