import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.size,
    required this.linkUrl,
    required this.title,
    required this.image,
  });

  final double size;
  final String image;
  final String linkUrl;
  final String title;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;
  bool isHoveredIcon = false;
  late Uri url;

  void _launchUrl() async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch ';
    }
  }

  @override
  void initState() {
    super.initState();

    url = Uri.parse(widget.linkUrl);
  }

  @override
  Widget build(BuildContext context) {
    var size = widget.size;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: size * 0.2,
        width: size * 0.25,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.lightBlue, width: size * 0.001),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(size * 0.02),
            bottomLeft: Radius.circular(size * 0.02),
          ),
          boxShadow:
              isHovered
                  ? [
                    BoxShadow(
                      blurRadius: size * 0.03,
                      color: Colors.lightBlue,
                      offset: Offset(0, 0),
                      blurStyle: BlurStyle.outer,
                    ),
                  ]
                  : [],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset(
                widget.image,
                height: size * 0.12,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size * 0.017,
                vertical: size * 0.01,
              ),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'font2',
                  fontSize: size * 0.015,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size * 0.015),
              child: MouseRegion(
                onEnter: (_) => setState(() => isHoveredIcon = true),
                onExit: (_) => setState(() => isHoveredIcon = false),
                child: GestureDetector(
                  onTap: _launchUrl,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(
                      horizontal: size * 0.009,
                      vertical: size * 0.005,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: size * 0.001,
                      ),
                      borderRadius: BorderRadius.circular(size * 0.005),
                      color:
                          isHoveredIcon
                              ? Colors.lightBlue.shade300
                              : Colors.black,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FontAwesomeIcons.github,
                          color:
                              isHoveredIcon
                                  ? Colors.black
                                  : Colors.lightBlue.shade300,
                          size: size * 0.017,
                        ),
                        SizedBox(width: size * 0.007),
                        Text(
                          'GitHub',
                          style: TextStyle(
                            color: isHoveredIcon ? Colors.black : Colors.white,
                            fontFamily: 'font2',
                            fontWeight: FontWeight.bold,
                            fontSize: size * 0.01,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
