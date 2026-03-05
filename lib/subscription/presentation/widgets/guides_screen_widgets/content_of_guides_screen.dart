import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ContentOfGuidesScreen extends StatelessWidget {
  const ContentOfGuidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.height * .06),
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            AppStrings.setupAreaText,
            style: Styles.styleBold24(context).copyWith(fontSize: 24.0.sp),
          ),
        ),
        SizedBox(height: 5.0.h),
        Padding(
          padding: const EdgeInsets.only(left: 38.0),
          child: Text(
            AppStrings.setupAreaDescriptionText,
            style: Styles.styleDarkRegular16(
              context,
            ).copyWith(fontSize: 16.0.sp),
          ),
        ),
        SizedBox(height: 18.0.h),
        Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 12.0),
          child: Text(
            AppStrings.instructionText,
            style: Styles.styleSemiBold24(context).copyWith(fontSize: 24.0.sp),
          ),
        ),
        SizedBox(height: 5.0.h),
        Padding(
          padding: const EdgeInsets.only(left: 38.0),
          child: Text(
            AppStrings.instructionDescriptionText,
            style: Styles.styleDarkRegular16(
              context,
            ).copyWith(fontSize: 16.0.sp),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                AppStrings.virtualWorldReadyText,
                style: Styles.styleSemiBold12(
                  context,
                  false,
                ).copyWith(fontSize: 16.0.sp),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
