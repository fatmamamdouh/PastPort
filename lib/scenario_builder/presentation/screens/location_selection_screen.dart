import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/scenario_builder/presentation/screens/role_selection_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/customization_body_screens.dart';

class LocationSelectionScreen extends StatelessWidget {
  const LocationSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomizationBodyScreens(
        onTap: ()
        {
          context.navigate(RoleSelectionScreen());
        },
        isLocationSelected: true,
        isGoalSelected: false,
        isRoleSelected: false,
        selectionText: AppStrings.locationSelectionText,
        firstImage: Assets.pyramidsLocationImage,
        firstTitle: "Giza Pyramids",
        secondImage: Assets.karnakTemplateImage,
        secondTitle: "Karnak Temple",
        thirdImage: Assets.valleyKingsLocationImage,
        thirdTitle: "Valley of the Kings",
        fourthImage: Assets.hatshepsutTemplateLocationImage,
        fourthTitle: "Temple of Hatshepsut",
      ),
    );
  }
}
