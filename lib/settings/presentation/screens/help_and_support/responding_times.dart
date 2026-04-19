import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class RespondingTimes extends StatelessWidget {
  const RespondingTimes({super.key, required this.days, required this.hours});

  final String days;
  final String hours;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          days,
          style: Styles.styleSemiBold20(
            context,
          ).copyWith(color: AppColors.blackColor, fontSize: 10.0),
        ),
        Spacer(),
        Text(
          hours,
          style: Styles.styleSemiBold20(
            context,
          ).copyWith(fontSize: 9.0, color: AppColors.faqQuestionColor),
        ),
      ],
    );
  }
}
