import 'package:flutter/material.dart';
import 'dart:math' as math;

class LineShape extends StatefulWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;

  LineShape(
      {this.width,
      this.height,
      this.strokeWidth,
      this.lineColor,
      this.capStyle});

  @override
  State<LineShape> createState() => _LineShapeState();
}

class _LineShapeState extends State<LineShape>
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
              child: CustomPaint(painter: LinePainter()),
            ));
      },
    );
  }
}

class LinePainter extends CustomPainter {
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;

  LinePainter({this.capStyle, this.lineColor, this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 10
      ..color = lineColor ?? Colors.red
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(size.width / 100, size.height * 1 / 2),
        Offset(size.width, size.height * 1 / 2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
