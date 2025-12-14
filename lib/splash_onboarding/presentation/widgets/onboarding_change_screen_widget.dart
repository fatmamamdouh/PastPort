import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';

class OnboardingChangeScreenWidget extends StatelessWidget {
  const OnboardingChangeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 45.0, bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Color(0xffCBB98E).withValues(
                alpha: .6
            ),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: AppColors.whiteColor,
              child: CircleAvatar(
                backgroundColor: Color(0xCBB98E66),
                radius: 20,
                child: Center(child: Image.asset(Assets.changeOnboardingScreenIcon, height: 100, width: 100,)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
