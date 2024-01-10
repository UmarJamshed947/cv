import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButtonContainer extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientVertical;
  final Function() onpressed;

  GradientButtonContainer(
      {super.key, required this.title,
      required this.width,
      required this.height,
      required this.clr,
      required this.overlayColor,
      required this.isGradientVertical,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: isGradientVertical
                    ? Alignment.topCenter
                    : Alignment.centerLeft,
                end: isGradientVertical
                    ? Alignment.bottomCenter
                    : Alignment.centerRight,
                colors: clr,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                overlayColor: MaterialStateProperty.all<Color>(overlayColor),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(0)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              onPressed: onpressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title,style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
