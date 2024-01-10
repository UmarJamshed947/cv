import 'package:cv/widgets/cursor/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

  void changeCursor(
      {required GlobalKey key, required BoxDecoration boxDecoration}) {
    final renderBox = key.currentContext?.findRenderObject() as RenderBox;
    if (renderBox == null) {
      return;
    } else {
      state = AnimatedCursorState(
          size1: Size(60, 60),
          offset1: state.offset1,
          decoration: CursorConstants.boxDecorationHovered);
      notifyListeners();
    }
  }

  void resetCursor() {
    state = AnimatedCursorState();
    notifyListeners();
  }

  void updateCursorPosition(Offset postion) {
    state = AnimatedCursorState(offset1: postion, offset2: postion);
    notifyListeners();
  }
}

class AnimatedCircleCursor extends StatelessWidget {
  const AnimatedCircleCursor({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnimatedCursorProvider(),
      child: Consumer<AnimatedCursorProvider>(
          child: child,
          builder: (context, value, child) {
            final state = value.state;

            return Stack(
              children: [
                child != null ? child : Container(),
                Positioned.fill(
                  child: MouseRegion(
                    opaque: false,
                    onHover: (event) => context
                        .read<AnimatedCursorProvider>()
                        .updateCursorPosition(event.position),
                  ),
                ),
                Visibility(
                    visible: state.offset1 !=Offset.zero,
                    child: AnimatedPositioned(
                      top: 0,
                      left: 0,
                      width: state.size1.width,
                      height: state.size1.height,
                      duration: Duration(milliseconds: 100),
                      child: IgnorePointer(
                        child: AnimatedContainer(
                          duration: Duration(
                            milliseconds: 300),
                            curve: Curves.easeOutExpo,
                            width: state.size1.width,
                            height: state.size1.height,
                    decoration: state.decoration ?? CursorConstants.boxDecorationOne,
                          ),
                      ),
                      ),
                    ))
              ],
            );
          }),
    );
  }
}
