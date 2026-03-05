import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/auth_utils/clipping_path_helpers/bottom_curve_clipper.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/content_of_second_container.dart';
import 'package:pastport/core/utils/app_colors.dart';

class BottomPartLoginScreen extends StatelessWidget {
  const BottomPartLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -60),
      child: ClipPath(
        clipper: BottomCurveClipper(),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(33),
              bottomRight: Radius.circular(33),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 28.0,
              left: 28.0,
              top: 50.0,
              bottom: 30, // 👈 مهم عشان السكرول
            ),
            child: ContentOfSecondContainer(),
          ),
        ),
      ),
    );
  }
}