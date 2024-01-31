import 'package:flutter/material.dart';
import 'dart:math' as math;

class CircleGridshape extends StatefulWidget {
  final double? width;
  final double? height;
  final Color? color;
  final int? crossAxisCount;
  final int? itemCount;
  final bool? isAnimationHorizontal;
  final double? gap;

  CircleGridshape(
      {this.height,
      this.width,
      this.color,
      this.crossAxisCount,
      this.gap,
      this.isAnimationHorizontal,
      this.itemCount});

  @override
  State<CircleGridshape> createState() => _CircleGridshapeState();
}

class _CircleGridshapeState extends State<CircleGridshape>
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
        controller.reverse();
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
        return Transform.translate(
            offset: widget.isAnimationHorizontal ?? true
                ? Offset(animation.value, 0)
                : Offset(0, animation.value),
            child: Container(
              height: widget.height,
              width: widget.width,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: widget.crossAxisCount ?? 5),
                  itemCount: widget.itemCount ?? 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(widget.gap ?? 2),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.color ?? Colors.blue,
                        ),
                      ),
                    );
                  }),
            ));
      },
    );
  }
}
