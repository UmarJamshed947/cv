import 'package:flutter/material.dart';
import 'dart:math' as math;


class CircleShape extends StatefulWidget {
  final double? radius;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;
  final StrokeJoin? strokeJoin;
  final PaintingStyle? paintingStyle;

  CircleShape(
      { this.radius,
        this.strokeWidth,
        this.lineColor,
        this.capStyle,
        this.strokeJoin,
        this.paintingStyle
      });

  @override
  State<CircleShape> createState() => _CircleShapeState();
}

class _CircleShapeState extends State<CircleShape>
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
        Tween<double>(begin: 1, end: 0.5).animate(controller);
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reverse();
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
      builder: (context,child){
        return Transform.scale(
          scaleX: animation.value,
          scaleY: animation.value,
          child: Container(
            width: widget.radius ?? 100,
            height: widget.radius ?? 100,
            child: CustomPaint(
              painter: CirclePainter(radius: widget.radius,capStyle: widget.capStyle,lineColor: widget.lineColor,strokeWidth: widget.strokeWidth),
            ),
          ),

        );
      }
    );

  }
}

class CirclePainter extends CustomPainter {
  final double ? radius;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;

  CirclePainter({this.capStyle, this.lineColor, this.strokeWidth, this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeWidth = strokeWidth ?? 10
      ..color = lineColor ?? Colors.red
      ..style = PaintingStyle.stroke;  // Use stroke style for circle outline


    final rect = Rect.fromPoints(Offset(size.width / 100, size.height / 100), Offset(size.width, size.height));

    canvas.drawCircle(Offset(size.width, size.height), size.width, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}