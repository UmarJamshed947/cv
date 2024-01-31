import 'package:cv/widgets/AnimatedWidgets/shapes/circle_gridshape.dart';
import 'package:cv/widgets/AnimatedWidgets/shapes/line_shape.dart';
import 'package:cv/widgets/Buttons/gradient_button.dart';
import 'package:cv/widgets/cursor/animated_circle_cursor.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/AnimatedWidgets/shapes/animated_shape_container.dart';
import '../widgets/AnimatedWidgets/txtbox_slider/animated_txtbox_slider.dart';
import '../widgets/Buttons/haptic_circle.dart';
import '../widgets/Icons/padded_icons.dart';
import '../widgets/Text_folder/poppins.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FAFF),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 160, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedCircleCursorMouseRegion(
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset("assets/images/personal.png"),
                          ),
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
                            Padding(
                              padding: EdgeInsets.only(right: 60),
                              child: GradientButtonContainer(
                                  title: "Download CV",
                                  width: 250,
                                  height: 80,
                                  clr: [Color(0xffFF4518), Color(0xffFF4518)],
                                  overlayColor: Colors.red,
                                  isGradientVertical: false,
                                  onpressed: () {}),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 500,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Poppins(
                                    text: 'I am',
                                    color: Color(0xffFF4518),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Poppins(
                                    text: 'Umar Jamshed',
                                    color: Color(0xff222222),
                                    fontSize: 60,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Poppins(
                                    text:
                                        'Passionate IT Professional & Flutter App Developer, crafting digital excellence with 6+ years of expertise. AI Enthusiast | Innovation Driver.',
                                    color: Color(0xff888888),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 50,
                                    width: 480,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: AnimatedCircleCursorMouseRegion(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: HapticCircle(),
                                        ),
                                        SizedBox(width: 30),
                                        Poppins(
                                          text: "Play Video",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 30,
                                    left: 30,
                                    child: AnimatedShapeContainer()),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 40),
                                      SizedBox(
                                        height: 400,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          child: Image.asset(
                                            "assets/images/imge.jpeg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(height: 70),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.info,
                          title: "About Me",
                          onpressed: () {},
                          tabData: "none",
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.addressBook,
                          title: "Resume",
                          onpressed: () {},
                          tabData: "none",
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.thinkPeaks,
                          title: "Portfolio",
                          onpressed: () {},
                          tabData: "none",
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.gears,
                          title: "Service",
                          onpressed: () {},
                          tabData: "none",
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.star,
                          title: "Testimonial",
                          onpressed: () {},
                          tabData: "none",
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.blog,
                          title: "Blog",
                          onpressed: () {},
                          tabData: "none",
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.envelope,
                          title: "Contact",
                          onpressed: () {},
                          tabData: "none",
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                   LineShape(width: 120,height: 120),
                  // CircleGridshape(
                  //   height: 130,
                  //   width: 90,
                  //   crossAxisCount: 4,
                  //   itemCount: 20,
                  //   color: Color(0xffC9CDFF),
                  //   gap: 6,
                  // ),
                  Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
