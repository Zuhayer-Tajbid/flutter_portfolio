import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/widgets/arrow.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    super.key,
    required this.size,
    required this.skills,

    required this.iconList,
  });

  final List<IconData> iconList;

  final List<String> skills;

  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(skills.length, (index) {
        return Container(
          margin: EdgeInsets.only(bottom: size * 0.013),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size * 0.01),
            color: Colors.blue.shade200,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size * 0.013,
              vertical: size * 0.006,
            ),
            child: Row(
              children: [
                Text(
                  skills[index],
                  style: TextStyle(
                    fontFamily: 'font2',
                    fontSize: size * 0.012,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: size * 0.005),
                Icon(iconList[index], size: size * 0.013),
              ],
            ),
          ),
        );
      }),
    );
  }
}
