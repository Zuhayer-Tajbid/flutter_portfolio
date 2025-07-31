import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CseText extends StatelessWidget {
  const CseText({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      'RUET CSE-22',
      style: TextStyle(fontSize: size, fontFamily: 'font1'),
      stops: [0.7, 1],
      colors: [const Color.fromARGB(255, 109, 221, 255), mainC],
    );
  }
}
