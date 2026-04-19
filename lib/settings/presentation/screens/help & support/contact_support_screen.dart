import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: AppStrings.contactSupportScreenTitle),
            SizedBox(height: 60.h),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 45.0),
              child: Column(
                children: [
                  HereToHelpBlock(),
                  SizedBox(height: 12.0),
                  EmailSupportBlock(),
                  SizedBox(height: 12.0),
                  ResponseTimesBlock(),
                  SizedBox(height: 12.0),
                  OperatingHoursBlock(),
                  SizedBox(height: 12.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffCBD3E5).withValues(alpha: .40),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        AppStrings.beforeContactSupportText,
                        style: Styles.styleFaqMedium10(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HereToHelpBlock extends StatelessWidget {
  const HereToHelpBlock({super.key});

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
              AppStrings.weHereToHelpText,
              style: Styles.styleMedium10(
                context,
              ).copyWith(fontSize: 12.0.sp),
            ),
            Text(
              AppStrings.weHereToHelpDescriptionText,
              style: Styles.styleMedium10(context).copyWith(
                fontSize: 12.0.sp,
                color: Color(0xff3B5998),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



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

class EmailSupportBlock extends StatelessWidget {
  const EmailSupportBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffCBD3E5).withValues(alpha: .40),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 16.r,
              backgroundColor: Color(0xffCBD3E5).withValues(alpha: .4),
              child: Image.asset(
                Assets.emailIcon,
                width: 18.0,
                height: 18.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.emailSupportText,
                    style: Styles.styleMedium16(
                      context,
                    ).copyWith(fontSize: 12.0, color: AppColors.blackColor),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    AppStrings.sendUsEmailText,
                    style: Styles.styleFaqMedium10(
                      context,
                    ).copyWith(fontSize: 10.0, overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    AppStrings.mailText,
                    style: Styles.styleFaqMedium10(
                      context,
                    ).copyWith(fontSize: 10.0, overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

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
            ),
            RespondingTimes(
              days: AppStrings.saturdayText,
              hours: AppStrings.tenToFourHoursText,
            ),
            RespondingTimes(
              days: AppStrings.sundayText,
              hours: AppStrings.closedText,
            ),
          ],
        ),
      ),
    );
  }
}

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
