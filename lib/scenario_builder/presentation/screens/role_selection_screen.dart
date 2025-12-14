import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/scenario_builder/presentation/screens/goal_selection_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/customization_body_screens.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomizationBodyScreens(
        onTap: ()
        {
          context.navigate(GoalSelectionScreen());
        },
        isLocationSelected: false,
        isGoalSelected: false,
        isRoleSelected: true,
        selectionText: AppStrings.roleSelectionText,
        firstImage: Assets.historicalRoleEgypt,
        firstTitle: AppStrings.historicalRoleText,
        secondImage: Assets.citizenRoleEgypt,
        secondTitle: AppStrings.citizenRoleText,
        thirdImage: Assets.characterRoleEgypt,
        thirdTitle: AppStrings.characterRoleText,
        fourthImage: Assets.visitorRoleEgypt,
        fourthTitle: AppStrings.visitorRoleText,
      ),
    );
  }
}
