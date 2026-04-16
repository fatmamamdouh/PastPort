import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
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
            HeadSettings(title: "Terms & Policies"),
            SizedBox(height: 60.h),
            NavigationCard(
              title: AppStrings.termsScreenTitle,
              description: "Our terms and condition",
              iconImage: Assets.termsServiceIconImage,
              onPressed: ()
              {
                context.navigate(TermsServiceScreen());
              },
            ),
            NavigationCard(
              title: AppStrings.privacyScreenTitle,
              description: "How we handle your data",
              iconImage: Assets.privacyIconImage,
              onPressed: ()
              {
                context.navigate(PrivacyPolicyScreen());
              },
            ),
            NavigationCard(
              title: AppStrings.cookiesScreenTitle,
              description: "How we use cookies",
              iconImage: Assets.cookiesIconImage,
              onPressed: ()
              {
                context.navigate(CookiePolicyScreen());
              },
            ),
            NavigationCard(
              title: AppStrings.refundScreenTitle,
              description: "Returns and refund",
              iconImage: Assets.refundIconImage,
              onPressed: ()
              {
                context.navigate(RefundPolicyScreen());
              },
            ),
            SizedBox(
              height: 28.0.h,
            ),
            StlNeedHelp(
              answer: "By using our service, you agree to these terms and policies. Please read them carefully.",
              question: "Last Updated: December 4, 2025",
            ),
          ],
        ),
      ),
    );
  }
}
