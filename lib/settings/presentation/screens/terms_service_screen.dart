import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/rules_card.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class TermsServiceScreen extends StatelessWidget {
  const TermsServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: AppStrings.termsScreenTitle),
            SizedBox(height: 60.h),
            RulesCard(title: AppStrings.firstTermsTitle, description: AppStrings.firstTermsDesc,),
            RulesCard(title: AppStrings.secondTermsTitle, description: AppStrings.secondTermsDesc,),
            RulesCard(title: AppStrings.thirdTermsTitle, description: AppStrings.thirdTermsDesc,),
            RulesCard(title: AppStrings.fourthTermsTitle, description: AppStrings.fourthTermsDesc,),
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
