import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/constants.dart';
import 'package:pastport/subscription/presentation/widgets/language_selection_screen_widgets/language_card_widget.dart';

class GroupOfLanguages extends StatefulWidget {
  const GroupOfLanguages({super.key});

  @override
  State<GroupOfLanguages> createState() => _GroupOfLanguagesState();
}

class _GroupOfLanguagesState extends State<GroupOfLanguages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LanguageCardWidget(
          color: Constants.isSelectedLanguage? AppColors.primaryColor : AppColors.primaryColor.withValues(alpha: .20),
          onTap: (){
            print("----- ${Constants.isSelectedLanguage}");
            setState(() {
              Constants.isSelectedLanguage = true;
            });
            print("english clicked -----------");
            print(Constants.isSelectedLanguage);
          },
          languageTitle: AppStrings.englishText,
          languageDescription: AppStrings.englishText,
        ),
        SizedBox(height: 6),
        LanguageCardWidget(
          color: AppColors.primaryColor.withValues(alpha: .20),
          languageTitle: AppStrings.arabicText,
          languageDescription: AppStrings.arabicDescText,
        ),
        SizedBox(height: 6),
        LanguageCardWidget(
          color: AppColors.primaryColor.withValues(alpha: .20),
          languageTitle: AppStrings.spanishText,
          languageDescription: AppStrings.spanishDescText,
        ),
        SizedBox(height: 6),
        LanguageCardWidget(
          color: AppColors.primaryColor.withValues(alpha: .20),
          languageTitle: AppStrings.chineseText,
          languageDescription: AppStrings.chineseDescText,
        ),
      ],
    );
  }
}
