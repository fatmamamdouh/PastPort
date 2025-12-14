import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/screens/login_screen.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_field.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class FormOfSignUpScreen extends StatelessWidget {
  const FormOfSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextField(
          keyboardType: TextInputType.text,
          height: 40,
          radius: 8.0,
          labelText: "Username",
          isFilled: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 31.0),
          child: CustomTextField(
            keyboardType: TextInputType.text,
            height: 40,
            radius: 8.0,
            labelText: "First name",
            isFilled: false,
          ),
        ),
        CustomTextField(
          keyboardType: TextInputType.text,
          height: 40,
          radius: 8.0,
          labelText: "Last name",
          isFilled: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 31.0),
          child: CustomTextField(
            keyboardType: TextInputType.emailAddress,
            height: 40,
            radius: 8.0,
            labelText: "Email",
            isFilled: false,
          ),
        ),
        CustomTextField(
          keyboardType: TextInputType.text,
          height: 40,
          radius: 8.0,
          labelText: "Password",
          isFilled: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 31.0),
          child: CustomTextField(
            keyboardType: TextInputType.text,
            height: 40,
            radius: 8.0,
            labelText: "Confirm Password",
            isFilled: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 48.0,
          ),
          child: CustomButton(
            borderColor: AppColors.textFieldBorderColor,
            buttonColor: AppColors.whiteColor,
            radius: 8.0,
            height: 40.0,
            onPressed: () {
              context.navigate(LoginScreen());
            },
            buttonText: AppStrings.signUpText,
            textStyle: Styles.styleBold16(context)
                .copyWith(
              fontSize: 16,
              color: AppColors.textFieldBorderColor,
            ),
          ),
        ),
        CustomTextButton(
          onPressed: () {},
          text: AppStrings.alreadyHaveAccountText,
          style: Styles.styleSemiBold12(
            context,
            true,
          ).copyWith(fontSize: 10),
        ),
      ],
    );
  }
}
