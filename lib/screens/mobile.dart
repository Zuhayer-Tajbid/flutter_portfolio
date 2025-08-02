import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/colors.dart';

import 'package:portfolio/widgets/animated_text.dart';
import 'package:portfolio/widgets/arrow.dart';
import 'package:portfolio/widgets/cse_text.dart';
import 'package:portfolio/widgets/developer_text.dart';
import 'package:portfolio/widgets/name_text.dart';
import 'package:portfolio/widgets/picture.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/project_text.dart';
import 'package:portfolio/widgets/scroll_arrow.dart';
import 'package:portfolio/widgets/skill_label.dart';
import 'package:portfolio/widgets/skill_text.dart';
import 'package:portfolio/widgets/skill_widget.dart';
import 'package:portfolio/widgets/social_icon.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,

              height: MediaQuery.of(context).size.height,

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
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03),
                        child: Picture(
                          w: size.height * 0.47,
                          h: size.height * 0.37,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.025,
                          left: size.height * 0.022,
                          right: size.height * 0.022,
                        ),
                        child: AnimatedBorderText(size: size.height * 0.05),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.04,
                          top: size.width * 0.005,
                          right: size.width * 0.04,
                        ),
                        child: CseText(size: size.height * 0.04),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.height * 0.042,
                        ),
                        child: DeveloperText(size: size.height * 0.018),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //SizedBox(width: size.height * 0.04),
                          SocialIcon(
                            linkUrl: 'https://www.facebook.com/zuhayer.tajbid',
                            icon: FontAwesomeIcons.facebook,
                            size: size.height * 1.4,
                          ),
                          SizedBox(width: size.height * 0.035),
                          SocialIcon(
                            linkUrl: 'https://github.com/Zuhayer-Tajbid',
                            icon: FontAwesomeIcons.github,
                            size: size.height * 1.4,
                          ),
                          SizedBox(width: size.height * 0.035),
                          SocialIcon(
                            linkUrl: 'https://github.com/Zuhayer-Tajbid',
                            icon: FontAwesomeIcons.envelope,
                            size: size.height * 1.4,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontFamily: 'font2',
                      color: Colors.white,
                      fontSize: size.height * 0.022,
                    ),
                  ),
                  SizedBox(height: size.height * 0.012),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.height * 0.037,
                    ),
                    child: Text(
                      'Hi! I\'m a Computer Science student at RUET, currently in my 2nd year. I\'m learning Flutter to build cross-platform mobile apps, and I try to explore and learn something new every day. I\'m passionate about growing as a developer and excited to see where this journey takes me!',
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'font2',
                        fontSize: size.height * 0.018,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ScrollHintArrow(size: size.height * 1.7),
                  ),
                  SizedBox(height: size.height * 0.017),
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

              height: MediaQuery.of(context).size.height,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mainC, Colors.black],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.5, 1],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.045),
                  HoverableChip(label: 'Skills', size: size.height),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width * 0.055),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: size.width * 0.25),
                          SkillLabel(
                            mainLabel: 'Languages',
                            size: size.width *1.58,
                          ),
                          SizedBox(height: size.width * 0.215),
                          SkillLabel(
                            mainLabel: 'Frameworks',
                            size: size.width*1.58 ,
                          ),
                          SizedBox(height: size.width * 0.46),
                          SkillLabel(
                            mainLabel: 'Courses',
                            size: size.width*1.58 ,
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          CustomPaint(
                            painter: LeftToRightBranchPainter(
                              color: Colors.teal,
                              endYs: [
                                size.width * 0.155,
                                size.width * 0.25,
                               size.width * 0.365,
                                size.width * 0.470,
                              ],
                              startX: size.width * 0.002,
                              endX: size.width * 0.24,
                              startY: size.width * 0.315,
                            ),
                          ),
                          CustomPaint(
                            painter: LeftToRightBranchPainter(
                              color: Colors.lightBlue,
                              endYs: [size.width * 0.65],
                              startX:size.width * 0.007,
                              endX:size.width * 0.25,
                              startY: size.width * 0.65,
                            ),
                          ),
                          CustomPaint(
                            painter: LeftToRightBranchPainter(
                              color: Colors.cyan,
                              endYs: [
                                size.width * 0.8,
                                size.width * 0.9,
                                size.width*1.01 ,
                                size.width * 1.15,
                                size.width * 1.27,
                                size.width * 1.4,
                                size.width * 1.51,
                                size.width * 1.640,
                              ],
                              startX: size.width * 0.002,
                              endX: size.width * 0.25,
                              startY: size.width * 1.225,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.26),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height * 0.05),
                          Padding(
                            padding: EdgeInsets.only(top: size.width * 0.005),
                            child: SkillWidget(
                              size: size.width * 2.45,
                              skills: ['Dart', 'C++', 'Java', 'C'],

                              iconList: [
                                FontAwesomeIcons.dartLang,
                                FontAwesomeIcons.code,
                                FontAwesomeIcons.java,
                                FontAwesomeIcons.c,
                              ],
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          SkillWidget(
                            size: size.width * 2.45,
                            skills: ['Flutter'],

                            iconList: [FontAwesomeIcons.flutter],
                          ),
                          SizedBox(height: size.width * 0.055),
                          SkillWidget(
                            size: size.width * 2.3,
                            skills: [
                              'Structured Programming',
                              'Data Structure',
                              'Object Oriented\nProgramming',
                              'Software Development\nProject I',
                              'Discrete Mathematics',
                              'Algorithm Analysis\n& Design',
                              'Numerical Methods',
                              'Microprocessors & \nAssembly Language',
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
                  SizedBox(height: size.height * 0.01),
                  ProjectText(size: size.height),
                  SizedBox(height: size.height * 0.03),
                  Wrap(
                    spacing: size.height * 0.04,
                    runSpacing: size.height * 0.02,
                    alignment: WrapAlignment.center,
                    children: [
                      ProjectCard(
                        size: size.height * 1.4,
                        linkUrl: 'https://github.com/Zuhayer-Tajbid/ClassTrack',
                        title: 'ClassTrack',
                        image: 'assets/photo/class_track.png',
                      ),
                      ProjectCard(
                        size: size.height * 1.4,
                        linkUrl:
                            'https://github.com/Zuhayer-Tajbid/Flash-Card-App',
                        title: 'Flash Card',
                        image: 'assets/photo/flash_card.png',
                      ),
                      ProjectCard(
                        size: size.height * 1.4,
                        linkUrl:
                            'https://github.com/Zuhayer-Tajbid/Teacher-s-Aid',
                        title: 'Teacher\'s Aid',
                        image: 'assets/photo/teacher_aid.png',
                      ),
                      ProjectCard(
                        size: size.height * 1.4,
                        linkUrl:
                            'https://github.com/Zuhayer-Tajbid/BMI-Calculator',
                        title: 'BMI Calculator',
                        image: 'assets/photo/bmi_calculator.png',
                      ),
                      ProjectCard(
                        size: size.height * 1.4,
                        linkUrl: 'https://github.com/Zuhayer-Tajbid/LogiCare',
                        title: 'LogiCare',
                        image: 'assets/photo/logi_care.png',
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'Open to collaboration or mentorship',
                    style: TextStyle(
                      fontFamily: 'font2',
                      fontSize: size.height * 0.025,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.08),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
