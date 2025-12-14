import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/reset_password_screen_widgets/content_of_reset_pass_screen.dart';
import 'package:pastport/authentication/presentation/widgets/shape_of_verification_container.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20.0,
          left: 20.0,
          top: 48.0,
          bottom: 20,
        ),
        child: ShapeOfVerificationContainer(
          widget: ContentOfResetPassScreen(),
        ),
      ),
    );
  }
}
