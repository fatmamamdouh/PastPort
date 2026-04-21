import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/contact_support_widgets/responding_times.dart';

class OperatingHoursBlock extends StatelessWidget {
  const OperatingHoursBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffCBD3E5).withValues(alpha: .40),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.operatingHoursText,
              style: Styles.styleSemiBold12(
                context,
                false,
              ).copyWith(color: AppColors.blackColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                color: Color(0xffD9D9D9),
                width: double.infinity,
                height: 1.0,
              ),
            ),
            RespondingTimes(
              days: AppStrings.monToFriText,
              hours: AppStrings.nineToSixHoursText,
              daysStyle: Styles.styleSemiBold20(
                context,
              ).copyWith(color: AppColors.blackColor, fontSize: 10.0),
              hoursStyle: Styles.styleSemiBold20(
                context,
              ).copyWith(fontSize: 9.0, color: AppColors.faqQuestionColor),
            ),
            RespondingTimes(
              days: AppStrings.saturdayText,
              hours: AppStrings.tenToFourHoursText,
              daysStyle: Styles.styleSemiBold20(
                context,
              ).copyWith(color: AppColors.blackColor, fontSize: 10.0),
              hoursStyle: Styles.styleSemiBold20(
                context,
              ).copyWith(fontSize: 9.0, color: AppColors.faqQuestionColor),
            ),
            RespondingTimes(
              days: AppStrings.sundayText,
              hours: AppStrings.closedText,
              daysStyle: Styles.styleSemiBold20(
                context,
              ).copyWith(color: AppColors.blackColor, fontSize: 10.0),
              hoursStyle: Styles.styleSemiBold20(
                context,
              ).copyWith(fontSize: 9.0, color: AppColors.faqQuestionColor),
            ),
          ],
        ),
      ),
    );
  }
}
