import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';

class TransparencyImage extends StatelessWidget {
  const TransparencyImage({super.key, required this.assetName});

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.whiteColor,
            Colors.transparent,
          ],
          stops: [0.95, 1.0],
        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
      },
      blendMode: BlendMode.dstIn,
      child: Image.asset(
        assetName,
        height: context.height * .6,
        width: context.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
