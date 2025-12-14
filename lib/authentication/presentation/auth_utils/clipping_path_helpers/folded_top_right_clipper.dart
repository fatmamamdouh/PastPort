import 'package:flutter/cupertino.dart';

class FoldedTopRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 0);                    // Start top-left
    path.lineTo(size.width - 80, 0);     // Before the corner
    path.lineTo(size.width, 80);         // Diagonal cut
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
