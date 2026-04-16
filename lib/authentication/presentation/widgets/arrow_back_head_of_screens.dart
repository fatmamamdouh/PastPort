import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';

class ArrowBackHeadOfScreens extends StatelessWidget {
  const ArrowBackHeadOfScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 22.0,
        bottom: 50.0,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.whiteColor.withValues(alpha: .2),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: AppColors.secondaryColor,),
            ),
          ),
        ],
      ),
    );
  }
}
