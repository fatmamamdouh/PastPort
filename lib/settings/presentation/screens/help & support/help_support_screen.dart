import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/screens/faq_screen.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/navigation_card.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: AppStrings.helpSupportScreenTitle),
            SizedBox(height: 60.h),
            NavigationCard(
              title: AppStrings.faqTitleScreen,
              description: "Find answer to common question",
              iconImage: Assets.faqIconImage,
              onPressed: ()
              {
                context.navigate(FaqScreen());
              },
            ),
            NavigationCard(
              title: "Contact Support",
              description: "Chat with our support team",
              iconImage: Assets.contactSupportIconImage,
              onPressed: ()
              {
                context.navigate(FaqScreen());
              },
            ),
            NavigationCard(
              title: "Report a Problem",
              description: "Let us know what went wrong",
              iconImage: Assets.reportProblemIconImage,
              onPressed: ()
              {
                context.navigate(FaqScreen());
              },
            ),
            NavigationCard(
              title: "Send Feedback",
              description: "Share your thoughts with us",
              iconImage: Assets.feedbackIconImage,
              onPressed: ()
              {
                context.navigate(FaqScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
