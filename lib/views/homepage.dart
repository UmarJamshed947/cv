import 'package:cv/compenents/about_compenent.dart';
import 'package:cv/widgets/AnimatedWidgets/shapes/circle_gridshape.dart';
import 'package:cv/widgets/AnimatedWidgets/shapes/circle_shape.dart';
import 'package:cv/widgets/AnimatedWidgets/shapes/line_shape.dart';
import 'package:cv/widgets/Buttons/gradient_button.dart';
import 'package:cv/widgets/cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../provider/tab_data_provider.dart';
import '../widgets/AnimatedWidgets/shapes/animated_shape_container.dart';
import '../widgets/AnimatedWidgets/shapes/arrow_shape.dart';
import '../widgets/AnimatedWidgets/shapes/rect_shape.dart';
import '../widgets/AnimatedWidgets/shapes/triangle_shape.dart';
import '../widgets/AnimatedWidgets/txtbox_slider/animated_txtbox_slider.dart';
import '../widgets/Buttons/haptic_circle.dart';
import '../widgets/Icons/padded_icons.dart';
import '../widgets/Text_folder/poppins.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String tabData = context.watch<TabDataProvider>().tabData;
    return Scaffold(
      backgroundColor: Color(0xffF1FAFF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(top: 150,left: 10,child: CircleShape(
              radius: 10,
              strokeWidth: 3,
              lineColor: Color(0xffC9CDFF),
              strokeJoin: StrokeJoin.round,
            ),),
            Positioned(top: 300,left: 45,
              child: RectangleShape(
                width: 20,
              height: 20,
              strokeWidth: 3,
              lineColor: Color(0xffDBF1CD),
              strokeJoin: StrokeJoin.round,
            ),),
            Positioned(top: 500,left: 45,
              child: LineShape(
                width: 30,
                strokeWidth: 5,
                lineColor: Color(0xffDBF1CD),
              ),),
            Positioned(top: 300,right: 45,
              child: TriangleShape(
                width: 20,
                strokeWidth: 5,
                lineColor: Color(0xffB7BEC1),
                paintingStyle: PaintingStyle.fill,
                strokeJoin: StrokeJoin.round,
              ),),
            Positioned(top: 440,right: 50,child: CircleShape(
              radius: 10,
              strokeWidth: 5,
              lineColor: Color(0xffB7BEC1),
              strokeJoin: StrokeJoin.round,
            ),),
            Positioned(top: 550,left: 450,child: ArrowShape(

              strokeWidth: 5,
              lineColor: Color(0xffF5C4C7),
              strokeJoin: StrokeJoin.round,
            ),),
            Positioned(top: 450,left: 45,child: CircleGridshape(
              height: 90,
              width: 80,
              gap: 6,
              isAnimationHorizontal: false,
              color: Color(0xffC9CDFF),
              crossAxisCount: 4,
              itemCount: 20,


            ),),



            Padding(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedCircleCursorMouseRegion(
                          child: SizedBox(
                            height: 40,
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

                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 400,
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
                                    fontSize: 35,
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
                                SizedBox(height: 60),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 50,
                                    width: 650,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: AnimatedCircleCursorMouseRegion(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: HapticCircle(),
                                          ),
                                          SizedBox(width: 20),
                                          Poppins(
                                            text: "Play Video",
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
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
                                    left: 100,
                                    child: AnimatedShapeContainer()),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 20),
                                      SizedBox(
                                        height: 300,
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
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.info,
                          title: "About Me",
                          onpressed: () {
                            context.read<TabDataProvider>().changeTabData("About Me");
                          },
                          tabData: tabData,
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.addressBook,
                          title: "Resume",
                          onpressed: () {},
                          tabData: tabData,
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.thinkPeaks,
                          title: "Portfolio",
                          onpressed: () {},
                          tabData: tabData,
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.gears,
                          title: "Service",
                          onpressed: () {},
                          tabData: tabData,
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.star,
                          title: "Testimonial",
                          onpressed: () {},
                          tabData: tabData,
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.blog,
                          title: "Blog",
                          onpressed: () {},
                          tabData: tabData,
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                        AnimatedTextboxSlider(
                          icon: FontAwesomeIcons.envelope,
                          title: "Contact",
                          onpressed: () {},
                          tabData:tabData,
                          color: Color(0xffff451b),
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                   //ArrowShape(width: 120,height: 120),
                  // CircleGridshape(
                  //   height: 130,
                  //   width: 90,
                  //   crossAxisCount: 4,
                  //   itemCount: 20,
                  //   color: Color(0xffC9CDFF),
                  //   gap: 6,
                  // ),

                  const SizedBox(height: 40),
                  tabData == "About Me" ? AboutComponent() : Container()

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
