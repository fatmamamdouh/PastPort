import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/check_verification_code_screen_widgets/body_for_verify_code.dart';
import 'package:pastport/authentication/presentation/widgets/head_of_verification_screens.dart';
import 'package:pastport/core/utils/app_strings.dart';

class ContentOfResendVerificationCodeScreen extends StatelessWidget {
  const ContentOfResendVerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadOfVerificationScreens(
          title: AppStrings.resendVerificationCodeText,
          subtitle: AppStrings.resendVerificationCodeDescriptionText,
        ),
        BodyForVerifyCode(),
      ],
    );
  }
}
