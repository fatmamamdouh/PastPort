import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/constants.dart';
import 'package:pastport/subscription/presentation/widgets/subscription_plans_screen_widgets/plan_card_widget.dart';

class GroupOfPlans extends StatefulWidget {
  const GroupOfPlans({super.key});

  @override
  State<GroupOfPlans> createState() => _GroupOfPlansState();
}

class _GroupOfPlansState extends State<GroupOfPlans> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCardWidget(
          onTap: (){
            setState(() {
              Constants.isSelectedPlan = true;
            });
          },
          color: Constants.isSelectedPlan? AppColors.lightRegularTextColor : AppColors.lightRegularTextColor.withValues(alpha: .6),
          planTitle: AppStrings.freePlanTitleText,
          planDescription: AppStrings.freePlanDescriptionText,
        ),
        SizedBox(height: 16),
        PlanCardWidget(
          color: AppColors.lightRegularTextColor.withValues(alpha: .6),
          planTitle: AppStrings.premiumPlanTitleText,
          planDescription: AppStrings.premiumPlanDescriptionText,
        ),
        SizedBox(height: 16),
        PlanCardWidget(
          color: AppColors.lightRegularTextColor.withValues(alpha: .6),
          planTitle: AppStrings.institutionalPlanTitleText,
          planDescription: AppStrings.institutionalPlanDescriptionText,
        ),
      ],
    );
  }
}
