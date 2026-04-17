import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/help_options.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreensBasic(
        content: Column(
          children: [
            HeadSettings(title: AppStrings.helpSupportScreenTitle),
            SizedBox(height: 60.h),
            HelpOptions(),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 55.0,bottom: 15.0, top: 15.0,),
              child: Text(
                AppStrings.statusText,
                style: Styles.styleMedium16(
                  context,
                ).copyWith(color: AppColors.blackColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
