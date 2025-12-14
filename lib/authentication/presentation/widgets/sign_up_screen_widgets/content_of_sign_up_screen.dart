import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/sign_up_screen_widgets/form_of_sign_up_screen.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ContentOfSignUpScreen extends StatelessWidget {
  const ContentOfSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Text(
            AppStrings.signUpText,
            style: Styles.styleBold27(
              context,
            ).copyWith(fontSize: 27),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            AppStrings.signUpScreenDescription,
            style: Styles.styleLight13(
              context,
            ).copyWith(fontSize: 13),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: FormOfSignUpScreen(),
        ),
      ],
    );
  }
}
