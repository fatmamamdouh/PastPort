import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/head_of_scenario_screens.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/scenario_selection_item.dart';

class CustomizationBodyScreens extends StatelessWidget {
  const CustomizationBodyScreens({
    super.key,
    required this.isLocationSelected,
    required this.isGoalSelected,
    required this.isRoleSelected,
    required this.selectionText,
    required this.firstImage,
    required this.firstTitle,
    required this.secondImage,
    required this.secondTitle,
    required this.thirdImage,
    required this.thirdTitle,
    required this.fourthImage,
    required this.fourthTitle,
    this.onTap,
  });

  final bool isLocationSelected;
  final bool isGoalSelected;
  final bool isRoleSelected;
  final String selectionText;

  final String firstImage;
  final String firstTitle;

  final String secondImage;
  final String secondTitle;

  final String thirdImage;
  final String thirdTitle;

  final String fourthImage;
  final String fourthTitle;

  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 62.0,
        right: 24.0,
        left: 24.0,
        bottom: 8.0,
      ),
      child: Column(
        children: [
          HeadOfScenarioScreens(
            isLocationSelected: isLocationSelected,
            isGoalSelected: isGoalSelected,
            isRoleSelected: isRoleSelected,
          ),
          Row(
            children: [
              Text(
                selectionText,
                style: Styles.styleMedium30(context).copyWith(fontSize: 30.0),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              ScenarioSelectionItem(image: firstImage, title: firstTitle),
              SizedBox(width: 15.0),
              ScenarioSelectionItem(image: secondImage, title: secondTitle),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              ScenarioSelectionItem(image: thirdImage, title: thirdTitle),
              SizedBox(width: 15.0),
              ScenarioSelectionItem(image: fourthImage, title: fourthTitle, onTap: onTap,),
            ],
          ),
        ],
      ),
    );
  }
}
