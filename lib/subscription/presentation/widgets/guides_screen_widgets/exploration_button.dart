import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_images.dart';

class ExplorationButton extends StatelessWidget {
  const ExplorationButton({super.key, required this.horizontalPaddingButton, required this.onTap, required this.text, required this.style});

  final double horizontalPaddingButton;
  final void Function() onTap;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPaddingButton),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 52.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              image: AssetImage(Assets.startButtonImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0),
              child: Text(
                text,
                style: style,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
