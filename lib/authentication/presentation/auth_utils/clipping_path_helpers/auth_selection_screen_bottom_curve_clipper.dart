import 'package:flutter/cupertino.dart';

class AuthSelectionScreenBottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // يبدأ من فوق شمال
    path.lineTo(0, size.height * 0.35);
    // منحنى كبير يمين
    path.quadraticBezierTo(
      size.width / 2,          // نقطة التحكم في نص العرض
      size.height * 0.8,             // النزول للعمق (اعمق منحنى)
      size.width,              // نهاية الخط
      size.height * 0.35,      // يرتفع تاني لنفس المستوى
    );
    // يقفل الشكل
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
