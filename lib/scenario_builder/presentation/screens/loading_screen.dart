import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/scenario_builder/presentation/controllers/loading_cubit/loading_cubit.dart';
import 'package:pastport/scenario_builder/presentation/controllers/loading_cubit/loading_states.dart';
import 'package:pastport/scenario_builder/presentation/screens/scene_view_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoadingCubit()..startLoading(),
        child: BlocConsumer<LoadingCubit, LoadingSceneStates>(
            builder: (BuildContext context, LoadingSceneStates state) {
              return Scaffold(
                backgroundColor: AppColors.primaryColor,
                body:  Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          valueColor: AlwaysStoppedAnimation(
                            AppColors.secondaryColor,
                          ),
                        ),
                      ),
                      Image(
                        image: LoadingCubit.get(context).loadingSteps[LoadingCubit.get(context).currentStep].icon,
                        width: 48,
                        height:428,
                      ),
                    ],
                  ),
                ),
              );
            },
            listener: (context, state) {
            if (state is LoadingSceneCompletedState) {

              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(
                    milliseconds: 400,
                  ), // سرعة الأنيميشن
                  pageBuilder: (_, animation, secondaryAnimation) =>
                      SceneViewScreen(),
                  transitionsBuilder: (_, animation, __, child) {
                    // Slide Animation
                    const begin = Offset(1.0, 0.0); // من اليمين
                    const end = Offset.zero;
                    var slideAnim = Tween(
                      begin: begin,
                      end: end,
                    ).animate(animation);

                    // Fade Animation
                    var fadeAnim = Tween<double>(
                      begin: 0,
                      end: 1,
                    ).animate(animation);

                    return FadeTransition(
                      opacity: fadeAnim,
                      child: SlideTransition(
                        position: slideAnim,
                        child: child,
                      ),
                    );
                  },
                ),
              );

              // context.navigate(SceneViewScreen());
              // context.navigate(NextScreen());
            }

          },
        ),
    );
  }
}
