import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/presentation/screens/scene_view_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/head_of_scenario_screens.dart';
import 'package:pastport/scenario_builder/presentation/widgets/custom_scenario_widgets/scenario_selection_item.dart';

class GoalSelectionScreen extends StatelessWidget {
  const GoalSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 62.0,
          right: 24.0,
          left: 24.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            HeadOfScenarioScreens(
              isLocationSelected: false,
              isGoalSelected: true,
              isRoleSelected: false,
            ),
            Row(
              children: [
                Text(
                  AppStrings.goalSelectionText,
                  style: Styles.styleMedium30(context).copyWith(fontSize: 30.0),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                ScenarioSelectionItem(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400), // سرعة الأنيميشن
                        pageBuilder: (_, animation, secondaryAnimation) => SceneViewScreen(),
                        transitionsBuilder: (_, animation, __, child) {
                          // Slide Animation
                          const begin = Offset(1.0, 0.0); // من اليمين
                          const end = Offset.zero;
                          var slideAnim = Tween(begin: begin, end: end).animate(animation);

                          // Fade Animation
                          var fadeAnim = Tween<double>(begin: 0, end: 1).animate(animation);

                          return FadeTransition(
                            opacity: fadeAnim,
                            child: SlideTransition(
                              position: slideAnim,
                              child: child,
                            ),
                          );
                        },
                      ),
                    );
                  },
                    image: Assets.educationalGoalImageEgypt, title: AppStrings.educationGoalTitleText),
                SizedBox(width: 15.0),
                ScenarioSelectionItem(image: Assets.explorationGoalImageEgypt, title: AppStrings.explorationGoalTitleText),
              ],
            ),
            SizedBox(height: 15.0),
            ScenarioSelectionItem(image: Assets.culturalGoalImageEgypt, title: AppStrings.culturalGoalTitleText),
          ],
        ),
      ),
    );
  }
}
