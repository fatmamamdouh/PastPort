import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/custom_button.dart';
import 'package:pastport/authentication/presentation/widgets/successful_process_screen_widgets/done_operator.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ContentOfSuccessfulProcessScreen extends StatelessWidget {
  const ContentOfSuccessfulProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DoneOperator(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Text(
            AppStrings.successfulText,
            style: Styles.styleSemiBold20(
              context,
            ).copyWith(fontSize: 20, color: AppColors.blackColor),
          ),
        ),
        Text(
          AppStrings.successfulDescriptionText,
          style: Styles.styleMedium16(context).copyWith(fontSize: 16),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: CustomButton(
            borderColor: AppColors.secondaryColor,
            buttonColor: AppColors.secondaryColor,
            radius: 12,
            height: 56.0,
            onPressed: () {},
            buttonText: AppStrings.returnToLogInText,
            textStyle: Styles.styleBold16(context).copyWith(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
