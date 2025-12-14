import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/social_media_icon.dart';
import 'package:pastport/core/utils/app_images.dart';

class SocialRegisteration extends StatelessWidget {
  const SocialRegisteration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIcon(logoImage: Assets.facebookLogoIcon),
        SizedBox(width: 20),
        SocialMediaIcon(logoImage: Assets.appleLogoIcon),
        SizedBox(width: 20),
        SocialMediaIcon(logoImage: Assets.googleLogoIcon),
      ],
    );
  }
}
