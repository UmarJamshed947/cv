import 'package:cv/widgets/Buttons/gradient_button.dart';
import 'package:cv/widgets/Text_folder/poppins.dart';
import 'package:cv/widgets/cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import '../widgets/Misc/info_tile_one.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,width: double.infinity,
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: const BorderRadius.all(Radius.circular(10),
       ),
       boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03),
       spreadRadius: 10,blurRadius: 20)]
     ),
      child: Row(
        children: [
          Expanded(child: Container(child: Stack(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 600,
                width: 400,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset("./assets/images/cv.jpeg"),
                ),
              ),
              Positioned(
                  top: 80,
                  right: 50,
                  child: Container(
                    height: 450,
                    width: 300,
                    padding: const EdgeInsets.all(40),
                    decoration: const BoxDecoration(
                      color: Color(0xffFF451B),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column (
                      children: [
                         InfoTileOne(title: "Name", subTitle: 'Umar Jamshed'),
                        SizedBox(height: 20),
                      InfoTileOne(title: "Email", subTitle: 'omar.jamshaid@gmail.com'),
                        SizedBox(height: 20),
                        InfoTileOne(title: "Phone", subTitle: '03467853993'),
                        SizedBox(height: 20),
                        InfoTileOne(title: "Address", subTitle: 'CCB Rawalpindi'),
                      ],
                    ),
                  )),
            ],
          ),)),
          Expanded(
              child: Container(
                  child: Column(
                    children: [
                      Poppins(
                        text: "About Me",
                        fontSize: 25,
                        color: const Color(0xffFF451B),
                        fontWeight: FontWeight.w600,
                      ),
                      Poppins(
                        text: "Just an ordinary guy trying to make a difference",
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 20),
                      Poppins(
                        text: "As a software engineer having a strong background in computer science i have worked on wide range of projects",
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(height: 30),
                      AnimatedCircleCursorMouseRegion(
                        child: GradientButtonContainer(
                          title: "Download CV",
                       
                          width: 250,
                          height: 65,
                         
                          overlayColor: Colors.red,
                          clr: const [ Color(0xffFF451B), Color(0xffFF451B)],
                          onpressed: (){}, isGradientVertical: false,
                        ),
                      )
                    ],
                  ),)),

        ],
      ),
    );
  }
}


