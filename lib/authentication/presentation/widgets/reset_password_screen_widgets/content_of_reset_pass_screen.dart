import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/head_of_verification_screens.dart';
import 'package:pastport/authentication/presentation/widgets/reset_password_screen_widgets/form_of_reset_password.dart';
import 'package:pastport/core/utils/app_strings.dart';

class ContentOfResetPassScreen extends StatelessWidget {
  const ContentOfResetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadOfVerificationScreens(
          title: AppStrings.setNewPasswordText,
          subtitle: AppStrings.setNewPasswordDescriptionText,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: FormOfResetPassword(),
        ),
      ],
    );
  }
}
