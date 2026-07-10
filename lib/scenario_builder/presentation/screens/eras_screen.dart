import 'package:flutter/material.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/scenario_builder/models/era_model.dart';
import 'package:pastport/scenario_builder/presentation/widgets/eras_screen_widgets/appBar_of_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/eras_screen_widgets/appbar_shadow_era_screen.dart';
import 'package:pastport/scenario_builder/presentation/widgets/eras_screen_widgets/era_card_widget.dart';
import 'package:pastport/scenario_builder/presentation/widgets/header_text_of_screens.dart';

class ErasScreen extends StatelessWidget {
  const ErasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppbarOfScreen(),
      ),
      body: Column(
        children: [
          AppbarShadowEraScreen(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: HeaderTextOfScreens(text: AppStrings.headOfHomeScreenText),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: eras.length,
                separatorBuilder: (context, index) => SizedBox(height: 8.0),
                itemBuilder: (context, index) => EraCardWidget(eraModel: eras[index],),
              ),
            ),
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
