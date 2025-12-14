import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/auth_utils/clipping_path_helpers/double_fold_clipper.dart';
import 'package:pastport/authentication/presentation/widgets/sign_up_screen_widgets/container_of_sign_up_screen.dart';
import 'package:pastport/authentication/presentation/widgets/sign_up_screen_widgets/shadow_of_sign_up_container.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // shadow below the container
            ShadowOfSignUpContainer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                top: 48.0,
                bottom: 20,
              ),
              child: SizedBox(
                height: double.infinity,
                child: ClipPath(
                  clipper: DoubleFoldClipper(),
                  child: ContainerOfSignUpScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
