import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/arrow_back_head_of_screens.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class HeadOfVerificationScreens extends StatelessWidget {
  const HeadOfVerificationScreens({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ArrowBackHeadOfScreens(),
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            title,
            style: Styles.styleSemiBold20(
              context,
            ).copyWith(fontSize: 20, color: AppColors.blackColor),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 44.0),
          child: Text(
            subtitle,
            style: Styles.styleMedium16(context).copyWith(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
