import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class RulesCard extends StatelessWidget {
  const RulesCard({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 50.0, bottom: 10.0,),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.r),
          color: AppColors.secondaryColor.withValues(alpha: .1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.styleFaqMedium10(context).copyWith(
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(height: 4.0,),
              Text(
                description,
                style: Styles.styleFaqMedium10(context)),
            ],
          ),
        ),
      ),
    );
  }
}
