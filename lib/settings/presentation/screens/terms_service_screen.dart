import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/widgets/content_of_rules_screens.dart';

class TermsServiceScreen extends StatelessWidget {
  const TermsServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentOfRulesScreens(
        title: AppStrings.termsScreenTitle,
        firstTitle: AppStrings.firstTermsTitle,
        secondTitle: AppStrings.secondTermsTitle,
        thirdTitle: AppStrings.thirdTermsTitle,
        fourthTitle: AppStrings.fourthTermsTitle,
        firstDesc: AppStrings.firstTermsDesc,
        secondDesc: AppStrings.secondTermsDesc,
        thirdDesc: AppStrings.thirdTermsDesc,
        fourthDesc: AppStrings.fourthTermsDesc,
      ),
    );
  }
}
