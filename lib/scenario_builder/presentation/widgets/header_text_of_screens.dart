import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_styles.dart';

class HeaderTextOfScreens extends StatelessWidget {
  const HeaderTextOfScreens({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: Styles.styleDarkRegular16(
          context,
        ).copyWith(fontSize: 14),
      ),
    );
  }
}
