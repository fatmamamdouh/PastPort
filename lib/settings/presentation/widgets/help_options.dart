import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/screens/faq_screen.dart';
import 'package:pastport/settings/presentation/widgets/navigation_card.dart';

class HelpOptions extends StatelessWidget {
  const HelpOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25.0, left: 55.0,),
          child: Text(
            AppStrings.helpOptionsText,
            style: Styles.styleMedium16(
              context,
            ).copyWith(color: AppColors.blackColor),
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
        NavigationCard(
          circleColor: AppColors.secondaryColor,
          navigateIcon: IconButton(
    onPressed: ()
    {
      context.navigate(FaqScreen());
    },
    icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
    ),
          title: AppStrings.faqTitleScreen,
          description: AppStrings.faqDesc,
          iconImage: Assets.faqIconImage,
        ),
        NavigationCard(
          circleColor: AppColors.secondaryColor,
          title: AppStrings.contactSupportScreenTitle,
          description: AppStrings.contactSupportDesc,
          iconImage: Assets.contactSupportIconImage,
          navigateIcon: IconButton(
            onPressed: ()
            {
              context.navigate(FaqScreen());
            },
            icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
          ),
        ),
        NavigationCard(
          circleColor: AppColors.secondaryColor,
          title: AppStrings.reportProblemScreenTitle,
          description: AppStrings.reportProblemDesc,
          iconImage: Assets.reportProblemIconImage,
          navigateIcon: IconButton(
            onPressed: ()
            {
              context.navigate(FaqScreen());
            },
            icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
          ),
        ),
        NavigationCard(
          circleColor: AppColors.secondaryColor,
          title: AppStrings.sendFeedbackScreenTitle,
          description: AppStrings.sendFeedbackDesc,
          iconImage: Assets.feedbackIconImage,
          navigateIcon: IconButton(
            onPressed: ()
            {
              context.navigate(FaqScreen());
            },
            icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
          ),
        ),
      ],
    );
  }
}
