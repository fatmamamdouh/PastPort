import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pastport/core/utils/app_colors.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.logoImage});

  final String logoImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 17.5,
      backgroundColor: AppColors.whiteColor,
      child: SvgPicture.asset(logoImage),
    );
  }
}
