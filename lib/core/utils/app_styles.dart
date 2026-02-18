import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_colors.dart';

abstract class Styles
{
  static TextStyle styleBold30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 30),
      color: AppColors.boldTextColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleRegular10(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 10),
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleMedium30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 30),
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleRegular15(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 15),
      color: AppColors.lightRegularTextColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 20),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleRegular21(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 21),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 16),
      color: AppColors.darkRegularTextColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleDarkRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 16),
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 14),
      color: AppColors.darkRegularTextColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleSemiBold12(BuildContext context, bool underline) {
    return TextStyle(
      fontSize: getResponsiveText(context, 12),
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      decoration: underline? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle styleBold27(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 27),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleLight13(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 13),
      color: AppColors.blackColor,
      fontWeight: FontWeight.w300,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 16),
      color: AppColors.greyTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 16),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 24),
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleRegular18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 18),
      color: AppColors.guideTextColor.withValues(
        alpha: .8,
      ),
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 24),
      color: AppColors.secondaryColor.withValues(
        alpha: .95,
      ),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleBold15(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 15),
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleRegularGrey15(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 15),
      color: AppColors.greyIconColor,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle styleMedium10(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveText(context, 10),
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

}

double getResponsiveText(BuildContext context, double fontSize) {
  return MediaQuery.textScalerOf(context).scale(fontSize);
}
