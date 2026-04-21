import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/contact_support_widgets/responding_times.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/report_problem_widgets/select_category_list.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class ReportProblemScreen extends StatelessWidget {
  const ReportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: AppStrings.reportProblemScreenTitle),
            SizedBox(height: 60.h),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 45.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.containerBackgroundColor.withValues(
                        alpha: .40,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.question_mark, color: Color(0xffEB8B61),),
                          SizedBox(width: 2.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Help us Improve",
                                  style: Styles.styleMedium10(context),
                                ),
                                Text(
                                  maxLines: 2,
                                  "Describe the problem you're experiencing in detail. This helps us fix it faster",
                                  style: Styles.styleMedium10(
                                    context,
                                  ).copyWith(color: Color(0xffEB8B61), overflow: TextOverflow.ellipsis,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  SelectProblemCategoryList(),
                  SizedBox(height: 12.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.containerBackgroundColor.withValues(
                        alpha: .40,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Additional Information",
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9.0),
                            child: RespondingTimes(
                              days: "App Version",
                              hours: "1.0.0",
                              daysStyle: Styles.styleRegular14(
                                context,
                              ).copyWith(color: AppColors.blackColor, fontSize: 12.0),
                              hoursStyle: Styles.styleSemiBold20(
                                context,
                              ).copyWith(fontSize: 10.0, color: AppColors.blackColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9.0),
                            child: RespondingTimes(
                              days: "Device",
                              hours: "Mobile",
                              daysStyle: Styles.styleRegular14(
                                context,
                              ).copyWith(color: AppColors.blackColor, fontSize: 12.0),
                              hoursStyle: Styles.styleSemiBold20(
                                context,
                              ).copyWith(fontSize: 10.0, color: AppColors.blackColor),
                            ),
                          ),
                          RespondingTimes(
                            days: "Date",
                            hours: "December 22,2025",
                            daysStyle: Styles.styleRegular14(
                              context,
                            ).copyWith(color: AppColors.blackColor, fontSize: 12.0),
                            hoursStyle: Styles.styleSemiBold20(
                              context,
                            ).copyWith(fontSize: 10.0, color: AppColors.blackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.containerBackgroundColor.withValues(
                        alpha: .40,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Our team will review your report and may contact you for additional information if needed.",
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
