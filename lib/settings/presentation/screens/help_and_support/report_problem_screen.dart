import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
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
                          Image.asset(
                            Assets.questionMarkIcon,
                            height: 12.0,
                            width: 12.0,
                          ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
