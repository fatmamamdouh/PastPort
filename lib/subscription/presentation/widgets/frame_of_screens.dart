import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/subscription/presentation/widgets/painter_of_screens.dart';

class FrameOfScreens extends StatelessWidget {
  const FrameOfScreens({super.key, required this.widget, required this.backgroundColor});

  final Widget widget;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 37.0,
        bottom: 17.0,
        right: 7.0,
        left: 7.0,
      ),
      child: SizedBox(
        width: context.width,
        height: context.height,
        child: CustomPaint(
          painter: FoldPainter(
            bg: backgroundColor,
          ),
          child: widget,
        ),
      ),
    );
  }
}
