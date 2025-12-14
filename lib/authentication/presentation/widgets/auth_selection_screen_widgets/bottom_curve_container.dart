import 'package:flutter/cupertino.dart';
import 'package:pastport/authentication/presentation/auth_utils/clipping_path_helpers/auth_selection_screen_bottom_curve_clipper.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';

class BottomCurveContainer extends StatelessWidget {
  const BottomCurveContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: context.height * .2,
      child: ClipPath(
        clipper: AuthSelectionScreenBottomCurveClipper(),
        child: Container(
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
