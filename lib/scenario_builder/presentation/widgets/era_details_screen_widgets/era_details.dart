import 'package:flutter/cupertino.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/presentation/widgets/era_details_screen_widgets/list_of_images.dart';

class EraDetails extends StatelessWidget {
  const EraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListOfImages(),
        SizedBox(height: 12.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            textAlign: TextAlign.center,
            AppStrings.ancientEgyptDescriptionScreenText,
            style: Styles.styleMedium16(context).copyWith(
              fontSize: 16.0,
              color: AppColors.secondaryColor.withValues(alpha: .8),
            ),
          ),
        ),
      ],
    );
  }
}
