import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.borderColor, required this.buttonColor, required this.radius, required this.height, required this.onPressed, required this.buttonText, required this.textStyle});

  final Color borderColor;
  final Color buttonColor;
  final double radius;
  final double height;
  final void Function() onPressed;
  final String buttonText;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(radius),
        color: buttonColor,
      ),
      height: height,
      child: TextButton(
          onPressed: onPressed,
          child: Text(buttonText, style: textStyle,),
      ),
    );
  }
}
