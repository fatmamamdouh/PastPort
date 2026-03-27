import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/widgets/content_of_rules_screens.dart';

class CookiePolicyScreen extends StatelessWidget {
  const CookiePolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentOfRulesScreens(
        title: AppStrings.cookiesScreenTitle,
        firstTitle: AppStrings.firstCookiesTitle,
        secondTitle: AppStrings.secondCookiesTitle,
        thirdTitle: AppStrings.thirdCookiesTitle,
        fourthTitle: AppStrings.fourthCookiesTitle,
        firstDesc: AppStrings.firstCookiesDesc,
        secondDesc: AppStrings.secondCookiesDesc,
        thirdDesc: AppStrings.thirdCookiesDesc,
        fourthDesc: AppStrings.fourthCookiesDesc,
      ),
    );
  }
}
