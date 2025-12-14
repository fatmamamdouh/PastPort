import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';

class StepDivider extends StatelessWidget {
  const StepDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .2,
      height: 2,
      color: AppColors.guideTextColor.withValues(alpha: .3,), // الرمادي الفاتح فالصورة
    );
  }
}