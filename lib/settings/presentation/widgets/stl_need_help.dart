import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
class StlNeedHelp extends StatelessWidget {
  const StlNeedHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25.0,
        left: 45.0,
        top: 43.0,
        bottom: 80.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0.r),
          color: AppColors.secondaryColor.withValues(alpha: .1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.needHelpQuestion, style: Styles.styleSemiBold12(context, false).copyWith(
              fontSize: 12.0.sp,
              color: AppColors.blackColor,
            ),),
            Text(AppStrings.needHelpAnswer, style: Styles.styleMedium10(context).copyWith(
              color: AppColors.faqQuestionColor,
              fontSize: 12.sp,
            ),),
          ],
        ),
      ),
    );
  }
}
