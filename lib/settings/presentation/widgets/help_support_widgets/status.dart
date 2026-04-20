import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/navigation_card.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 25.0,
            left: 55.0,
            bottom: 15.0,
            top: 15.0,
          ),
          child: Text(
            AppStrings.statusText,
            style: Styles.styleMedium16(
              context,
            ).copyWith(color: AppColors.blackColor),
          ),
        ),
        NavigationCard(
          title: AppStrings.systemStatusTitle,
          description: AppStrings.systemStatusDesc,
          iconImage: Assets.systemStatusIcon,
          circleColor: Color(0xff008000).withValues(alpha: .21),
        ),
        NavigationCard(
          navigateIcon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0.r),
              color: Color(0xff008000).withValues(alpha: .5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(AppStrings.upToDateText, style: Styles.styleMedium10(context).copyWith(color: Color(0xff065206)),),
            ),
          ),
          title: AppStrings.appVersionTitle,
          description: AppStrings.appVersionDesc,
          iconImage: Assets.appVersionIcon,
          circleColor: Color(0xff9BC2E9),
        ),
        NavigationCard(
          title: AppStrings.lastUpdatedTitle,
          description: AppStrings.lastUpdatedDesc,
          iconImage: Assets.reportProblemIconImage,
          circleColor: Color(0xff8E8B8B),
        ),
      ],
    );
  }
}
