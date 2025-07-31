import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  const Picture({super.key, required this.w, required this.h});

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/photo/image.png')),
      ),
    );
  }
}
