import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';

class FoldPainter extends CustomPainter {
  Color bg = AppColors.primaryColor;

  FoldPainter({required this.bg,});
  @override
  void paint(Canvas canvas, Size size) {
    final paintBg = Paint()..color = bg;

    final path = Path();

    // ======== TOP ROUNDED ========
    const topRadius = 35.0;
    path.moveTo(0, topRadius);
    path.quadraticBezierTo(0, 0, topRadius, 0);
    path.lineTo(size.width - topRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, topRadius);

    // ======== RIGHT SIDE DOWN ========
    path.lineTo(size.width, size.height - 70);

    // ======== THE BLOB IN BOTTOM RIGHT ========
    final double bx = size.width;
    final double by = size.height;

    // Curve 1
    path.quadraticBezierTo(
      bx - 10,
      by - 70, // control (أعلى ويمين شوية)
      bx - 55,
      by - 70, // end
    );

    // Curve 2
    path.quadraticBezierTo(
      bx - 110,
      by - 50, // control
      bx - 80,
      by + 10, // end
    );

    // Bottom straight to the left
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black26, 6, false);
    canvas.drawPath(path, paintBg);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
