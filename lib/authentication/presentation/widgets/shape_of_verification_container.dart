import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/auth_utils/clipping_path_helpers/folded_top_right_clipper.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';

class ShapeOfVerificationContainer extends StatelessWidget {
  const ShapeOfVerificationContainer({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: ClipPath(
        clipper: FoldedTopRightClipper(),
        child: Container(
          color: AppColors.primaryColor,
          child: widget,
        ),
      ),
    );
  }
}
