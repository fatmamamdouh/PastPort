import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/widgets/content_of_rules_screens.dart';

class RefundPolicyScreen extends StatelessWidget {
  const RefundPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentOfRulesScreens(
        title: AppStrings.refundScreenTitle,
        firstTitle: AppStrings.firstRefundTitle,
        secondTitle: AppStrings.secondRefundTitle,
        thirdTitle: AppStrings.thirdRefundTitle,
        fourthTitle: AppStrings.fourthRefundTitle,
        firstDesc: AppStrings.firstRefundDesc,
        secondDesc: AppStrings.secondRefundDesc,
        thirdDesc: AppStrings.thirdRefundDesc,
        fourthDesc: AppStrings.fourthRefundDesc,
      ),
    );
  }
}
