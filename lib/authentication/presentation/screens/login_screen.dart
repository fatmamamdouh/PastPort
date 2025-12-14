import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/bottom_part_login_screen.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/top_part_login_screen.dart';
import 'package:pastport/core/utils/app_colors.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        child: Column(
          children: [
            TopPartLoginScreen(),
            BottomPartLoginScreen(),
          ],
        ),
      ),
    );
  }
}
