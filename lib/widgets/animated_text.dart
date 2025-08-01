import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AnimatedBorderText extends StatefulWidget {
  const AnimatedBorderText({super.key, required this.size});

  final double size;
  @override
  _AnimatedBorderTextState createState() => _AnimatedBorderTextState();
}

class _AnimatedBorderTextState extends State<AnimatedBorderText> {
  bool toggle = false;
  Timer? _timer;
  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!mounted) return; // extra safety
      setState(() {
        toggle = !toggle;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // <-- cancel the timer when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: GradientBoxBorder(
            width: 4,
            gradient: LinearGradient(
              colors:
                  toggle
                      ? [
                        Colors.lightBlue,
                        const Color.fromARGB(255, 13, 226, 148),
                        Colors.cyan,
                        Colors.white,
                      ]
                      : [
                        Colors.white,
                        Colors.lightBlue,
                        const Color.fromARGB(255, 13, 226, 148),
                        Colors.cyan,
                      ],
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: widget.size * 0.15),
          color: Colors.transparent,
          child: GradientText(
            'Zuhayer Tajbid',
            style: TextStyle(fontSize: widget.size, fontFamily: 'font1'),
            stops: [0.7, 1],
            colors: [const Color.fromARGB(255, 109, 221, 255), mainC],
          ),
        ),
      ),
    );
  }
}
