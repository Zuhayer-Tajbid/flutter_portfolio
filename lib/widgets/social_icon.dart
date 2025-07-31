import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatefulWidget {
  const SocialIcon({
    super.key,
    required this.linkUrl,
    required this.icon,
    required this.size,
  });
  final double size;

  final String linkUrl;
  final IconData icon;
  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool isHovered = false;
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
    // TODO: implement initState
    if (widget.icon == FontAwesomeIcons.envelope) {
      url = Uri(
        scheme: 'mailto',
        path: 'zuhayertajbid@gmail.com',
        query: 'subject=Contact from Portfolio&body=Hi Zuhayer,', // Optional
      );
    } else {
      url = Uri.parse(widget.linkUrl);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var s = widget.size;
    return MouseRegion(
      onEnter:
          (_) => setState(() {
            isHovered = true;
          }),
      onExit:
          (_) => setState(() {
            isHovered = false;
          }),
      child: GestureDetector(
        onTap: () => _launchUrl(),
        child: Container(
          height: isHovered ? s * 0.039 : s * 0.033,
          width: isHovered ? s * 0.039 : s * 0.033,
          decoration: BoxDecoration(
            boxShadow:
                isHovered
                    ? [
                      BoxShadow(
                        color: Colors.lightBlue,
                        blurRadius: s * 0.03,
                        spreadRadius: s * 0.005,
                        blurStyle: BlurStyle.outer,
                      ),
                    ]
                    : [],
            color: Colors.transparent,
            border:
                isHovered
                    ? null
                    : Border.all(color: Colors.lightBlue, width: 2),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(s * 0.009),
              bottomLeft: Radius.circular(s * 0.009),
            ),
          ),
          child: Center(
            child: FaIcon(
              widget.icon,
              color: Colors.lightBlue,
              size: isHovered ? s * 0.03 : s * 0.017,
            ),
          ),
        ),
      ),
    );
  }
}
