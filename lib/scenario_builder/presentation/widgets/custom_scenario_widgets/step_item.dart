import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class StepItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const StepItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected
                  ? AppColors.secondaryColor
                  : AppColors.secondaryColor.withValues(alpha: .5), // البني
              width: 3,
            ),
          ),
          child: Icon(
            icon,
            color: isSelected
                ? AppColors.secondaryColor
                : AppColors.secondaryColor.withValues(alpha: .5), // البني
            size: 16,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: Styles.styleMedium10(context).copyWith(
              fontSize: 12,
            color: isSelected? AppColors.secondaryColor : AppColors.secondaryColor.withValues(alpha: .5), // البني
          ),
        ),
      ],
    );
  }
}
