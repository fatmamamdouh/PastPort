import 'package:flutter/cupertino.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';
import 'package:pastport/scenario_builder/presentation/screens/era_details_screen.dart';

class EraCardWidget extends StatelessWidget {
  const EraCardWidget({super.key, required this.image, required this.title, required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        context.navigate(EraDetailsScreen());
      },
      child: Column(
        children: [
          Image.asset(
            image,
            height: context.height * .25,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(
            title,
            style: Styles.styleSemiBold24(
              context,
            ).copyWith(fontSize: 24, color: AppColors.secondaryColor),
          ),
          Text(
            subtitle,
            style: Styles.styleMedium10(context).copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
