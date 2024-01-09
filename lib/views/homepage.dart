import 'package:cv/widgets/Buttons/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/Icons/padded_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FAFF),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 250, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset("assets/images/cv.jpeg"),
                ),
                Row(
                  children: [
                    PaddedIcons(
                      ficon: FontAwesomeIcons.facebookF,
                      color: Color(0xff03A9F4),
                    ),
                    PaddedIcons(
                      ficon: FontAwesomeIcons.twitter,
                      color: Color(0xff03A9F4),
                    ),
                    PaddedIcons(
                      ficon: FontAwesomeIcons.youtube,
                      color: Color(0xffFF0000),
                    ),
                    PaddedIcons(
                      ficon: FontAwesomeIcons.instagram,
                      color: Color(0xfff44535),
                    ),
                    SizedBox(width: 20),
                    GradientButtonContainer(
                        title: "Download CV",
                        width: 250,
                        height: 80,
                        clr: [Color(0xffFF4518),Color(0xffFF4518)],
                        overlayColor: Colors.red,
                        isGradientVertical: false,
                        onpressed: (){})
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
