import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class RespondingTimes extends StatelessWidget {
  const RespondingTimes({super.key, required this.days, required this.hours, required this.daysStyle, required this.hoursStyle});

  final String days;
  final String hours;
  final TextStyle daysStyle;
  final TextStyle hoursStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          days,
          style: daysStyle,
        ),
        Spacer(),
        Text(
          hours,
          style: hoursStyle,
        ),
      ],
    );
  }
}
