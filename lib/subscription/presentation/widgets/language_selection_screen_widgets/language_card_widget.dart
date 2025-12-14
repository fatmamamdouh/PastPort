import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class LanguageCardWidget extends StatelessWidget {
  const LanguageCardWidget({super.key, required this.languageTitle, this.onTap, required this.languageDescription, required this.color});

  final String languageTitle;
  final String languageDescription;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageTitle,
                  style: Styles.styleMedium16(
                    context,
                  ).copyWith(fontSize: 20, color: AppColors.secondaryColor),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    languageDescription,
                    style: Styles.styleMedium16(
                      context,
                    ).copyWith(fontSize: 16, color: AppColors.secondaryColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
