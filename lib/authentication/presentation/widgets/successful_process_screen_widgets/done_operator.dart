import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';

class DoneOperator extends StatelessWidget {
  const DoneOperator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: AppColors.secondaryColor,
      child: CircleAvatar(
        radius: 49,
        backgroundColor: AppColors.primaryColor,
        child: Icon(Icons.check, color: AppColors.boldTextColor),
      ),
    );
  }
}
