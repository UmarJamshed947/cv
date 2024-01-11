import 'package:cv/widgets/Buttons/gradient_button.dart';
import 'package:cv/widgets/cursor/animated_circle_cursor.dart';
import 'package:cv/widgets/shapes/animated_shape_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/Buttons/haptic_circle.dart';
import '../widgets/Icons/padded_icons.dart';
import '../widgets/Text_folder/poppins.dart';
import '../widgets/shapes/animated_textbox_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1FAFF),
      // backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                          SizedBox(width: 25),
                          GradientButtonContainer(
                              title: "Download CV",
                              width: 200,
                              height: 80,
                              clr: [Color(0xffFF4518), Color(0xffFF4518)],
                              overlayColor: Colors.red,
                              isGradientVertical: false,
                              onpressed: () {})
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Poppins(
                                text: 'I am',
                                color: Color(0xffFF4518),
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Poppins(
                                text: ' Umar Jamshed',
                                color: Color(0xff222222),
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Poppins(
                                text: ' A passionate Manager IT',
                                color: Color(0xff888888),
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              color: Colors.white,
                              height: 40,
                            ),
                            SizedBox(height: 40),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: AnimatedCircleCursorMouseRegion(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
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
                      Expanded(
                          flex: 1,
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 30,
                                  left: 160,
                                  child: AnimatedShapeContainer()),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 30),
                                    SizedBox(
                                      height: 300,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
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
                  SizedBox(height: 50),
                  Row(
                    children: [
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.info,
                        title: 'About Me',
                        onpressed: (){},
                        tabData: 'none',
                        color:  Color(0xffff451b),
                        width: 200,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.addressBook,
                        title: 'Resume',
                        onpressed: (){},
                        tabData: 'none',
                        color:  Color(0xffff451b),
                        width: 200,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.thinkPeaks,
                        title: 'Portfolio',
                        onpressed: (){},
                        tabData: 'none',
                        color:  Color(0xffff451b),
                        width: 200,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.gears,
                        title: 'Service',
                        onpressed: (){},
                        tabData: 'none',
                        color:  Color(0xffff451b),
                        width: 200,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.star,
                        title: 'Testimonial',
                        onpressed: (){},
                        tabData: 'none',
                        color:  Color(0xffff451b),
                        width: 200,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.blog,
                        title: 'Blog',
                        onpressed: (){},
                        tabData: 'none',
                        color:  Color(0xffff451b),
                        width: 200,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.envelope,
                        title: 'Contact',
                        onpressed: (){},
                        tabData: 'none',
                        color:  Color(0xffff451b),
                        width: 200,
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


