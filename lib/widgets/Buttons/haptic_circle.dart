import 'package:cv/widgets/cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HapticCircle extends StatefulWidget {
  @override
  State<HapticCircle> createState() => _HapticCircleState();
}

class _HapticCircleState extends State<HapticCircle> {
  double currentRadius = 0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
        setState(() {
          currentRadius = 10;
        });
      },
      onExit: (event){
        setState(() {
          currentRadius = 0;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffFF8324),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 5)
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 0.5),
          child: Icon(FontAwesomeIcons.play,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
    );
  }
}
