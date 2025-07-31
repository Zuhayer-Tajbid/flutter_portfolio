import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:shimmer/shimmer.dart';

class ProjectText extends StatelessWidget {
  const ProjectText({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.lightBlue,
      child: Text(
        'Projects',
        style: TextStyle(
          fontFamily: 'font1',
          fontSize: size * 0.03,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
