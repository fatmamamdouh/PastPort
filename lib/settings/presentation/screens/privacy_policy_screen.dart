import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/widgets/content_of_rules_screens.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentOfRulesScreens(
        title: AppStrings.privacyScreenTitle,
        firstTitle: AppStrings.firstPrivacyTitle,
        secondTitle: AppStrings.secondPrivacyTitle,
        thirdTitle: AppStrings.thirdPrivacyTitle,
        fourthTitle: AppStrings.fourthPrivacyTitle,
        firstDesc: AppStrings.firstPrivacyDesc,
        secondDesc: AppStrings.secondPrivacyDesc,
        thirdDesc: AppStrings.thirdPrivacyDesc,
        fourthDesc: AppStrings.fourthPrivacyDesc,
      ),
    );
  }
}
