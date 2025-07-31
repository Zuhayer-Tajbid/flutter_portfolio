import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class DeveloperText extends StatelessWidget {
  const DeveloperText({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: 'font2',
        fontSize: size,
        color: Colors.white,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'An aspiring app developer',
            speed: Duration(milliseconds: 150),
          ),
        ],
        displayFullTextOnTap: true,
        isRepeatingAnimation: true,
        repeatForever: true,
      ),
    );
  }
}
