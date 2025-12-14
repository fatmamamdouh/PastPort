import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_button.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class RememberPasswordCheckButton extends StatelessWidget {
  const RememberPasswordCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          checkColor: AppColors.primaryColor,
          onChanged: (value) {},
          fillColor: WidgetStateProperty.all(
            AppColors.whiteColor,
          ),
        ),
        CustomTextButton(
          onPressed: () {},
          text: AppStrings.rememberPasswordText,
          style: Styles.styleRegular14(
            context,
          ).copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
