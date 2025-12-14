import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/check_verification_code_screen_widgets/body_for_verify_code.dart';
import 'package:pastport/authentication/presentation/widgets/head_of_verification_screens.dart';
import 'package:pastport/core/utils/app_strings.dart';

class ContentOfCheckVerificationCodeScreen extends StatelessWidget {
  const ContentOfCheckVerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadOfVerificationScreens(
          title: AppStrings.checkEmailText,
          subtitle: AppStrings.checkEmailDescriptionText,
        ),
         BodyForVerifyCode(),
      ],
    );
  }
}
