import 'package:flutter/material.dart';

class LeftToRightBranchPainter extends CustomPainter {
  final List<double> endYs;
  final double startX;
  final double endX;
  final double startY;
  final Color color;
  LeftToRightBranchPainter({
    required this.endYs,
    required this.startX,
    required this.endX,
    required this.startY,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;
    if (endYs.length == 1) {
      canvas.drawLine(Offset(startX, startY), Offset(endX, endYs.first), paint);
    } else {
      for (double endY in endYs) {
        final path = Path();
        path.moveTo(startX, startY);
        path.cubicTo(startX + 40, startY, endX - 40, endY, endX, endY);
        canvas.drawPath(path, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
