import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            HeadSettings(title: AppStrings.contactSupportScreenTitle,),
            SizedBox(height: 60.h),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 45.0,),
              child: Column(
                children: [
                  Container(
                    color: Color(0xffCBD3E5).withValues(alpha: .40),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppStrings.weHereToHelpText, style: Styles.styleMedium10(context).copyWith(fontSize: 12.0.sp,),),
                          Text(AppStrings.weHereToHelpDescriptionText, style: Styles.styleMedium10(context).copyWith(fontSize: 12.0.sp, color: Color(0xff3B5998),),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
