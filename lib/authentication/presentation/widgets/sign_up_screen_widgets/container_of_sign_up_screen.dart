import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/sign_up_screen_widgets/content_of_sign_up_screen.dart';
import 'package:pastport/core/utils/app_colors.dart';

class ContainerOfSignUpScreen extends StatelessWidget {
  const ContainerOfSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 27.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(33),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(4, 6),
          ),
        ],
      ),
      child: ContentOfSignUpScreen(),
    );
  }
}
