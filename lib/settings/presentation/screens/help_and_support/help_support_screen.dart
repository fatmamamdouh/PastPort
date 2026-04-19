import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/settings/presentation/widgets/head_settings.dart';
import 'package:pastport/settings/presentation/widgets/help%20&%20support%20widgets/help_options.dart';
import 'package:pastport/settings/presentation/widgets/help%20&%20support%20widgets/status.dart';
import 'package:pastport/settings/presentation/widgets/screens_basic.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ScreensBasic(
          content: Column(
            children: [
              HeadSettings(title: AppStrings.helpSupportScreenTitle),
              SizedBox(height: 60.h),
              HelpOptions(),
              Status()
            ],
          ),
        ),
      ),
    );
  }
}
