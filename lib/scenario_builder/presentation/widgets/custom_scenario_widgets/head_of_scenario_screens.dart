import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/step_divider.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/step_item.dart';
import 'package:pastport/scenario_builder/presentation/widgets/head_of_screens.dart';

class HeadOfScenarioScreens extends StatelessWidget {
  const HeadOfScenarioScreens({super.key, required this.isLocationSelected, required this.isRoleSelected, required this.isGoalSelected,});

  final bool isLocationSelected;
  final bool isRoleSelected;
  final bool isGoalSelected;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadOfCustomizationScreens(
          title: AppStrings.headOfScenarioCustomScreenText,
          style: Styles.styleSemiBold20(
            context,
          ).copyWith(fontSize: 20, color: AppColors.secondaryColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StepItem(
                icon: Icons.location_on_outlined,
                label: "Location",
                isSelected: isLocationSelected,
              ),
              StepDivider(),
              StepItem(
                icon: Icons.casino_outlined, // ← بدّليها بالآيكون اللي عندك
                label: "Role",
                isSelected: isRoleSelected,
              ),
              StepDivider(),
              StepItem(
                isSelected: isGoalSelected,
                icon: Icons.track_changes, // ← أيقونة الهدف
                label: "Goal",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
