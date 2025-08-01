import 'dart:ui';
import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/project_text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/colors.dart';

import 'package:portfolio/widgets/animated_text.dart';
import 'package:portfolio/widgets/arrow.dart';
import 'package:portfolio/widgets/cse_text.dart';
import 'package:portfolio/widgets/developer_text.dart';
import 'package:portfolio/widgets/name_text.dart';
import 'package:portfolio/widgets/picture.dart';
import 'package:portfolio/widgets/scroll_arrow.dart';
import 'package:portfolio/widgets/skill_label.dart';
import 'package:portfolio/widgets/skill_text.dart';
import 'package:portfolio/widgets/skill_widget.dart';
import 'package:portfolio/widgets/social_icon.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,

              height:
                  size.width >= 600 && size.width < 1024
                      ? size.width * 0.75
                      : size.width * 0.5625,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, mainC],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.55, 1],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: size.width * 0.01),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.width * 0.025,
                                left: size.width * 0.025,
                              ),
                              child: AnimatedBorderText(
                                size: size.width * 0.06,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.042,
                                top: size.width * 0.005,
                              ),
                              child: CseText(size: size.width * 0.04),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.042,
                              ),
                              child: DeveloperText(size: size.width * 0.016),
                            ),
                            SizedBox(height: size.width * 0.015),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.04),
                                SocialIcon(
                                  linkUrl:
                                      'https://www.facebook.com/zuhayer.tajbid',
                                  icon: FontAwesomeIcons.facebook,
                                  size: size.width,
                                ),
                                SizedBox(width: size.width * 0.025),
                                SocialIcon(
                                  linkUrl: 'https://github.com/Zuhayer-Tajbid',
                                  icon: FontAwesomeIcons.github,
                                  size: size.width,
                                ),
                                SizedBox(width: size.width * 0.025),
                                SocialIcon(
                                  linkUrl: 'https://github.com/Zuhayer-Tajbid',
                                  icon: FontAwesomeIcons.envelope,
                                  size: size.width,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.1),
                      Padding(
                        padding: EdgeInsets.only(top: size.width * 0.03),
                        child: Picture(
                          w: size.width * 0.4,
                          h: size.width * 0.3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width * 0.01 + size.height / size.width,
                  ),
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontFamily: 'font2',
                      color: Colors.white,
                      fontSize: size.width * 0.015,
                    ),
                  ),
                  SizedBox(height: size.width * 0.0012),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.035,
                    ),
                    child: Text(
                      'Hi! I\'m a Computer Science student at RUET, currently in my 2nd year. I\'m learning Flutter to build cross-platform mobile apps, and I try to explore and learn something new every day. I\'m passionate about growing as a developer and excited to see where this journey takes me!',
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'font2',
                        fontSize: size.width * 0.014,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ScrollHintArrow(size: size.width),
                  ),
                  SizedBox(height: size.width * 0.017),
                ],
              ),
            ),
            Container(
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mainC.withOpacity(0.8), mainC],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              width: double.infinity,

              height:
                  size.width >= 600 && size.width < 1024
                      ? size.width * 0.75
                      : size.width * 0.5625,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mainC, Colors.black],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.5, 1],
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: size.width * 0.1),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HoverableChip(label: 'Skills', size: size.width),
                    ],
                  ),
                  SizedBox(width: size.width * 0.15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: size.width * 0.066),
                          SkillLabel(mainLabel: 'Languages', size: size.width),
                          SizedBox(height: size.width * 0.075),
                          SkillLabel(mainLabel: 'Frameworks', size: size.width),
                          SizedBox(height: size.width * 0.165),
                          SkillLabel(mainLabel: 'Courses', size: size.width),
                        ],
                      ),

                      Column(
                        children: [
                          CustomPaint(
                            painter: LeftToRightBranchPainter(
                              color: Colors.teal,
                              endYs: [
                                size.width * 0.019,
                                size.width * 0.060,
                                size.width * 0.1,
                                size.width * 0.14,
                              ],
                              startX: size.width * 0.00,
                              endX: size.width * 0.258,
                              startY: size.width * 0.08,
                            ),
                          ),
                          CustomPaint(
                            painter: LeftToRightBranchPainter(
                              color: Colors.lightBlue,
                              endYs: [size.width * 0.188],
                              startX: size.width * 0.004,
                              endX: size.width * 0.258,
                              startY: size.width * 0.188,
                            ),
                          ),
                          CustomPaint(
                            painter: LeftToRightBranchPainter(
                              color: Colors.cyan,
                              endYs: [
                                size.width * 0.230,
                                size.width * 0.275,
                                size.width * 0.315,
                                size.width * 0.360,
                                size.width * 0.400,
                                size.width * 0.442,
                                size.width * 0.482,
                                size.width * 0.525,
                              ],
                              startX: size.width * 0,
                              endX: size.width * 0.258,
                              startY: size.width * 0.39,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.258),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: size.width * 0.005),
                            child: SkillWidget(
                              size: size.width,
                              skills: ['Dart', 'C++', 'Java', 'C'],

                              iconList: [
                                FontAwesomeIcons.dartLang,
                                FontAwesomeIcons.code,
                                FontAwesomeIcons.java,
                                FontAwesomeIcons.c,
                              ],
                            ),
                          ),
                          //SizedBox(height: size.width*0.01,),
                          SkillWidget(
                            size: size.width,
                            skills: ['Flutter'],

                            iconList: [FontAwesomeIcons.flutter],
                          ),
                          SizedBox(height: size.width * 0.003),
                          SkillWidget(
                            size: size.width,
                            skills: [
                              'Structured Programming',
                              'Data Structure',
                              'Object Oriented Programming',
                              'Software Development Project I',
                              'Discrete Mathematics',
                              'Algorithm Analysis & Design',
                              'Numerical Methods',
                              'Microprocessors & Assembly Language',
                            ],

                            iconList: [
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.hourglassHalf,
                              FontAwesomeIcons.hourglassHalf,
                              FontAwesomeIcons.hourglassHalf,
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mainC.withOpacity(0.8), mainC],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              width: double.infinity,

              height:
                  size.width >= 600 && size.width < 1024
                      ? size.width * 0.75
                      : size.width * 0.5625,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, mainC],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.6, 1],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: size.width * 0.01),
                  ProjectText(size: size.width),
                  SizedBox(height: size.width * 0.03),
                  Wrap(
                    spacing: size.width * 0.04,
                    runSpacing: size.width * 0.04,
                    alignment: WrapAlignment.center,
                    children: [
                      ProjectCard(
                        size: size.width,
                        linkUrl: 'https://github.com/Zuhayer-Tajbid/ClassTrack',
                        title: 'ClassTrack',
                        image: 'assets/photo/class_track.png',
                      ),
                      ProjectCard(
                        size: size.width,
                        linkUrl:
                            'https://github.com/Zuhayer-Tajbid/Flash-Card-App',
                        title: 'Flash Card',
                        image: 'assets/photo/flash_card.png',
                      ),
                      ProjectCard(
                        size: size.width,
                        linkUrl:
                            'https://github.com/Zuhayer-Tajbid/Teacher-s-Aid',
                        title: 'Teacher\'s Aid',
                        image: 'assets/photo/teacher_aid.png',
                      ),
                      ProjectCard(
                        size: size.width,
                        linkUrl:
                            'https://github.com/Zuhayer-Tajbid/BMI-Calculator',
                        title: 'BMI Calculator',
                        image: 'assets/photo/bmi_calculator.png',
                      ),
                      ProjectCard(
                        size: size.width,
                        linkUrl: 'https://github.com/Zuhayer-Tajbid/LogiCare',
                        title: 'LogiCare',
                        image: 'assets/photo/logi_care.png',
                      ),
                    ],
                  ),
                  SizedBox(height: size.width * 0.01),
                  Text(
                    'Open to collaboration or mentorship',
                    style: TextStyle(
                      fontFamily: 'font2',
                      fontSize: size.width * 0.013,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
