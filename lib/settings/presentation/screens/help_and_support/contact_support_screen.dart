import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/email_support_block.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/here_to_help_block.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/operating_hours_block.dart';
import 'package:pastport/settings/presentation/screens/help_and_support/response_times_block.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ScreensBasic(
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
      ),
    );
  }
}