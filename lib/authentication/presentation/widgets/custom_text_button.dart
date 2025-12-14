import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.onPressed, required this.text, required this.style});

  final void Function() onPressed;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          const EdgeInsets.all(0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
