import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';

class HoverableChip extends StatefulWidget {
  final String label;
  final double size;

  const HoverableChip({super.key, required this.label, required this.size});

  @override
  State<HoverableChip> createState() => _HoverableChipState();
}

class _HoverableChipState extends State<HoverableChip> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: 1.0,
          end: _isHovered ? 1.1 : 1.0, 
        ),
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        builder: (context, value, child) {
          return Chip(
            backgroundColor: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(widget.size * 0.01),
            ),
            label: Transform.scale(
              scale: value,
              child: Text(
                widget.label,
                style: TextStyle(
                  fontFamily: 'font1',
                  fontSize: widget.size * 0.03,
                  color:
                      _isHovered
                          ? const Color.fromARGB(255, 35, 231, 238)
                          : Colors.white54,
                  shadows:
                      _isHovered
                          ? [
                            Shadow(
                              blurRadius: 15,
                              color: mainC,
                              offset: Offset(0, 0),
                            ),
                          ]
                          : [],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
