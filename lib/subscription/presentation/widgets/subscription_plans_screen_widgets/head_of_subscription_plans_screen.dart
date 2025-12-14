import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class HeadOfSubscriptionPlansScreen extends StatelessWidget {
  const HeadOfSubscriptionPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.height * .06),
        Text(
          AppStrings.getPremiumHeaderText,
          style: Styles.styleBold30(
            context,
          ).copyWith(fontSize: 32, color: AppColors.secondaryColor),
        ),
        SizedBox(height: 16),
        Text(
          AppStrings.getPremiumDescriptionText,
          style: Styles.styleRegular14(context).copyWith(
            fontSize: 14,
            color: AppColors.secondaryColor.withValues(alpha: .7),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 22.0),
          child: Image.asset(Assets.subscriptionPlansImage),
        ),
      ],
    );
  }
}
