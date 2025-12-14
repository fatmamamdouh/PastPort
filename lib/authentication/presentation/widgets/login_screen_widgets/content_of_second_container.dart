import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_button.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/social_registeration.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/subscription/presentation/screens/language_selection_screen.dart';

class ContentOfSecondContainer extends StatelessWidget {
  const ContentOfSecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextButton(
              onPressed: () {},
              text: AppStrings.forgetPasswordText,
              style: Styles.styleSemiBold12(
                context,
                false,
              ).copyWith(fontSize: 12),
            ),
          ],
        ),
        SizedBox(height: 45),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                borderColor: AppColors.secondaryColor,
                buttonColor: AppColors.secondaryColor,
                radius: 27,
                height: 41,
                onPressed: () {
                  context.navigate(LanguageSelectionScreen());
                },
                buttonText: AppStrings.loginText,
                textStyle: Styles.styleRegular14(context)
                    .copyWith(
                  fontSize: 14,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            SizedBox(width: 25),
            Expanded(
              child: CustomButton(
                borderColor: AppColors.secondaryColor,
                buttonColor: AppColors.whiteColor,
                radius: 27,
                height: 41,
                onPressed: () {},
                buttonText: AppStrings.registerText,
                textStyle: Styles.styleRegular14(context)
                    .copyWith(
                  fontSize: 14,
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,),
          child: Text(
            AppStrings.connectWithText,
            style: Styles.styleRegular14(
              context,
            ).copyWith(color: Color(0xff747070)),
          ),
        ),
        SocialRegisteration(),
      ],
    );
  }
}
