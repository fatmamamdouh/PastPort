import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_images.dart';

class ScreensBasic extends StatelessWidget {
  const ScreensBasic({super.key, required this.content});

  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: -30,
          top: -70,
          child: Image.asset(
            Assets.lowerLayerFaqBackgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 70,
          top: -70,
          child: Image.asset(
            Assets.topLayerFaqBackgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        content,
      ],
    );
  }
}
