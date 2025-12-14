import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class HeadOfLanguageScreen extends StatelessWidget {
  const HeadOfLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(35.0),),
      ),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: context.height * .06),
          CircleAvatar(
            backgroundColor: AppColors.lightRegularTextColor.withValues(
              alpha: .3,
            ),
            radius: 25,
            child: Image.asset(
                Assets.changeLanguageIcon,
              height: 24.0,
              width: 24.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            AppStrings.selectLanguageText,
            style: Styles.styleMedium16(
              context,
            ).copyWith(fontSize: 16, color: AppColors.secondaryColor),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            AppStrings.selectLanguageDescriptionText,
            style: Styles.styleMedium16(
              context,
            ).copyWith(fontSize: 14, color: AppColors.secondaryColor),
          ),
          SizedBox(height: context.height * .035),
        ],
      ),
    );
  }
}
