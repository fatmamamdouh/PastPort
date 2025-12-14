import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_button.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class ResendCodeRow extends StatelessWidget {
  const ResendCodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.notSendEmailText,
          style: Styles.styleSemiBold12(context, false).copyWith(
            fontSize: 14,
            color: AppColors.textFieldBorderColor,
          ),
        ),
        CustomTextButton(
          onPressed: () {},
          text: AppStrings.resendCodeText,
          style: Styles.styleSemiBold12(
            context,
            true,
          ).copyWith(fontSize: 14, color: AppColors.secondaryColor),
        ),
      ],
    );
  }
}
