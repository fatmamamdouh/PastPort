import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ResponseTimesBlock extends StatelessWidget {
  const ResponseTimesBlock({super.key});

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
              AppStrings.responseTimeText,
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
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.emailSupportText,
                      style: Styles.styleMedium10(
                        context,
                      ).copyWith(fontSize: 11.0, color: AppColors.blackColor),
                    ),
                    Text(
                      AppStrings.averageResponseTimeText,
                      style: Styles.styleSemiBold12(context, false).copyWith(
                        fontSize: 10.0,
                        color: AppColors.faqQuestionColor.withValues(alpha: .8),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  AppStrings.twelveHoursText,
                  style: Styles.styleSemiBold20(
                    context,
                  ).copyWith(fontSize: 9.0, color: Color(0xff008000)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
