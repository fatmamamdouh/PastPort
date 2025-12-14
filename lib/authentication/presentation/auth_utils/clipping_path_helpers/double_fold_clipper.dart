import 'package:flutter/cupertino.dart';

class DoubleFoldClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // البداية من أعلى اليسار
    path.moveTo(0, 0);

    // أعلى اليمين
    path.lineTo(size.width, 0);

    // بداية النزول للكسرة الأولى
    path.lineTo(size.width, size.height - 210);

    // 🔹 أول كسرة (خفيفة)
    path.quadraticBezierTo(
      size.width - 110, size.height - 120, // نقطة التحكم
      size.width - 180, size.height - 60, // نقطة النهاية
    );

    // 🔹 ثاني كسرة (أعرض)
    path.quadraticBezierTo(
      size.width - 290, size.height, // نقطة التحكم
      0, size.height, // النهاية
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}