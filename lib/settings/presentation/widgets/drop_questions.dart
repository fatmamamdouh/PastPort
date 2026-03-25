import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class DropQuestions extends StatelessWidget {
  const DropQuestions({super.key, required this.question, required this.answer, required this.title});

  final String question;
  final String answer;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, left: 45.0, bottom: 6.0,),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.r),
          color: AppColors.secondaryColor.withValues(alpha: .1),
        ),
        child: ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: Color(0xffB1CAD8).withValues(alpha: .5),
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                  child: Text(
                    title,
                    style: Styles.styleSemiBold12(context, false).copyWith(
                      color: AppColors.titleFaqsColor,
                    ),
                  ),
                ),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(question, style: Styles.styleSemiBold12(context, false).copyWith(
                    fontSize: 12.sp,
                    color: AppColors.faqQuestionColor,
                  ),),
                ),
              ],
            ),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 16.0, left: 36.0,),
              child: Text(answer, style: Styles.styleMedium10(context).copyWith(fontSize: 10.sp, color: AppColors.blackColor),),
            )
          ],
        ),
      ),
    );
  }
}
