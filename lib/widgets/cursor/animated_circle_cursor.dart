import 'package:flutter/material.dart';

class AnimatedCursorState {
  final BoxDecoration? decoration;
  final Offset offset1;
  final Offset offset2;
  final Size size1;
  final Size size2;

  AnimatedCursorState({
    this.decoration,
    this.offset1 = Offset.zero,
    this.offset2 = Offset.zero,
    this.size1 = circle1Size,
    this.size2 = circle2Size,
  });
  static const Size circle1Size = Size(30, 30);
  static const Size circle2Size = Size(5, 5);
}

class AnimatedCursorProvider extends ChangeNotifier {
  AnimatedCursorProvider();


  AnimatedCursorState state = AnimatedCursorState();

  void changeCursor(){}

  void resetCursor (){

  }

  void updateCursorPosition (){}

}