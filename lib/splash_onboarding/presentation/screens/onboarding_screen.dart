import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/splash_onboarding/presentation/widgets/onboarding_change_screen_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  Assets.firstOnboardingImage,
                  height: context.height * .5,
                  width: context.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 33.0, right: 20.0),
                  child: Text(
                    AppStrings.skipText,
                    style: Styles.styleMedium16(context).copyWith(
                        fontSize: 16,
                        color: Color(0xE9E3D1D9),
                    ),),
                ),
              ],
            ),
            SizedBox(height: 33,),
            Text(
              AppStrings.firstOnboardingTitle,
              style: Styles.styleBold30(context).copyWith(fontSize: 30),
            ),
            SizedBox(height: 8,),
            Text(
              textAlign: TextAlign.center,
              AppStrings.firstOnboardingDescription,
              style: Styles.styleRegular15(context).copyWith(fontSize: 15),
            ),
            SizedBox(height: 8,),
            Container(color: AppColors.primaryColor, width: 200, height: 1,),
            SizedBox(height: 33,),
            OnboardingChangeScreenWidget(),
          ],
        ),
      ),
    );
  }
}
