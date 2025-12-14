import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodeTextField extends StatelessWidget {
  const OtpCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: PinCodeTextField(
        appContext: context,
        length: 5,
        keyboardType: TextInputType.number,
        animationType: AnimationType.fade,
        cursorColor: AppColors.whiteColor,

        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(12),
          fieldHeight: 43,
          fieldWidth: 41,
          activeColor: AppColors.lightRegularTextColor,
          inactiveColor: AppColors.whiteColor,
          selectedColor: AppColors.lightRegularTextColor,
        ),

        onChanged: (value) {},
        onCompleted: (value) {},

      ),
    );
  }
}
