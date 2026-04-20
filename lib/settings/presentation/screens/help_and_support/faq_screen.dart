import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/help_support_widgets/drop_questions.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';
import 'package:pastport/settings/presentation/widgets/stl_need_help.dart';

class FaqScreen extends StatelessWidget {
  List<DropQuestions> faqs = [
    DropQuestions(
      question: AppStrings.accountFirstQuestion,
      answer: AppStrings.accountFirstAnswer,
      title: AppStrings.accountText,
    ),
    DropQuestions(
      question: AppStrings.accountSecondQuestion,
      answer: AppStrings.accountSecondAnswer,
      title: AppStrings.accountText,
    ),
    DropQuestions(
      question: AppStrings.billingFirstQuestion,
      answer: AppStrings.billingFirstAnswer,
      title: AppStrings.billingText,
    ),
    DropQuestions(
      question: AppStrings.billingSecondQuestion,
      answer: AppStrings.billingSecondAnswer,
      title: AppStrings.billingText,
    ),
    DropQuestions(
      question: AppStrings.securityQuestion,
      answer: AppStrings.securityAnswer,
      title: AppStrings.securityText,
    ),
    DropQuestions(
      question: AppStrings.settingsQuestion,
      answer: AppStrings.settingsAnswer,
      title: AppStrings.settingsText,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
        children: [
          HeadSettings(title: AppStrings.faqTitleScreen),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => faqs[index],
              itemCount: faqs.length,
            ),
          ),
          StlNeedHelp(
            question: AppStrings.needHelpQuestion,
            answer: AppStrings.needHelpAnswer,
          ),
        ],
      ),),
    );
  }
}
