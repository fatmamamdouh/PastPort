import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/rules_card.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class ContentOfRulesScreens extends StatelessWidget {
  const ContentOfRulesScreens({super.key, required this.title, required this.firstTitle, required this.secondTitle, required this.thirdTitle, required this.fourthTitle, required this.firstDesc, required this.secondDesc, required this.thirdDesc, required this.fourthDesc});

  final String title;
  final String firstTitle;
  final String secondTitle;
  final String thirdTitle;
  final String fourthTitle;
  final String firstDesc;
  final String secondDesc;
  final String thirdDesc;
  final String fourthDesc;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: title),
            SizedBox(height: 60.h),
            RulesCard(title: firstTitle, description: firstDesc,),
            RulesCard(title: secondTitle, description: secondDesc,),
            RulesCard(title: thirdTitle, description: thirdDesc,),
            RulesCard(title: fourthTitle, description: fourthDesc,),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 50.0, bottom: 10.0,),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0.r),
                  color: AppColors.secondaryColor.withValues(alpha: .1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(AppStrings.footTermsScreens, style: Styles.styleFaqMedium10(context).copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
