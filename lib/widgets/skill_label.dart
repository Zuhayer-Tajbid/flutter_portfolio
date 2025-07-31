import 'package:flutter/material.dart';

class SkillLabel extends StatelessWidget {
  const SkillLabel({super.key, required this.mainLabel, required this.size});

  final String mainLabel;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        backgroundColor: const Color.fromARGB(255, 152, 239, 220),
        label: Text(
          mainLabel,
          style: TextStyle(
            fontSize: size * 0.017,
            fontFamily: 'font2',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
