import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';


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