import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/cookie_policy_screen.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/privacy_policy_screen.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/refund_policy_screen.dart';
import 'package:pastport/settings/presentation/screens/terms%20&%20policies/terms_service_screen.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/navigation_card.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';
import 'package:pastport/settings/presentation/widgets/stl_need_help.dart';

class TermsPoliciesScreen extends StatelessWidget {
  const TermsPoliciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: AppStrings.termsPoliciesScreenTitle),
            SizedBox(height: 60.h),
            NavigationCard(
              circleColor: AppColors.secondaryColor,
              title: AppStrings.termsScreenTitle,
              description: AppStrings.termsServicesDesc,
              iconImage: Assets.termsServiceIconImage,
              navigateIcon: IconButton(
                onPressed: ()
                {
                  context.navigate(TermsServiceScreen());
                },
                icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
              ),
            ),
            NavigationCard(
              circleColor: AppColors.secondaryColor,
              title: AppStrings.privacyScreenTitle,
              description: AppStrings.privacyPolicyDesc,
              iconImage: Assets.privacyIconImage,
              navigateIcon: IconButton(
                onPressed: ()
                {
                  context.navigate(PrivacyPolicyScreen());
                },
                icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
              ),
            ),
            NavigationCard(
              circleColor: AppColors.secondaryColor,
              title: AppStrings.cookiesScreenTitle,
              description: AppStrings.cookiePolicyDesc,
              iconImage: Assets.cookiesIconImage,
              navigateIcon: IconButton(
                onPressed: ()
                {
                  context.navigate(CookiePolicyScreen());
                },
                icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
              ),
            ),
            NavigationCard(
              circleColor: AppColors.secondaryColor,
              title: AppStrings.refundScreenTitle,
              description: AppStrings.refundPolicyDesc,
              iconImage: Assets.refundIconImage,
              navigateIcon: IconButton(
                onPressed: ()
                {
                  context.navigate(RefundPolicyScreen());
                },
                icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
              ),
            ),
            SizedBox(
              height: 28.0.h,
            ),
            StlNeedHelp(
              answer: AppStrings.agreementText,
              question: AppStrings.lastUpdated,
            ),
          ],
        ),
      ),
    );
  }
}
