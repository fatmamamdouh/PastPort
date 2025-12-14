import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';

class ShadowOfSignUpContainer extends StatelessWidget {
  const ShadowOfSignUpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: context.height * .25,  // 200
      right: context.height * .15, // 140
      child: Transform.rotate(
        angle: -.4, // rotation of shadow
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.blackColor.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withValues(alpha: 0.25),
                blurRadius: 50,
                spreadRadius: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
