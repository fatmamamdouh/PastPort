import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/scenario_builder/models/loading_model.dart';
import 'package:pastport/scenario_builder/presentation/controllers/loading_cubit/loading_states.dart';

class LoadingCubit extends Cubit<LoadingSceneStates>
{
  LoadingCubit() : super(LoadingSceneInitialState());

  static LoadingCubit get(context) => BlocProvider.of(context);

  final loadingSteps = [
    LoadingStepModel(
      title: "Preparing your journey...",
      icon: AssetImage(Assets.characterLoadingIcon),
    ),

    LoadingStepModel(
      title: "Building history...",
      icon: AssetImage(Assets.pyramidsLoadingIcon),
    ),

    LoadingStepModel(
      title: "Generating your adventure...",
      icon: AssetImage(Assets.sphinxLoadingIcon),
    ),
  ];

  int currentStep = 0;


  Future<void> startLoading() async {
    for (int i = 0; i < loadingSteps.length; i++) {
      currentStep = i;
      emit(LoadingSceneChangedState());

      if (i != loadingSteps.length - 1) {
        await Future.delayed(const Duration(seconds: 2));
      }
    }

    emit(LoadingSceneCompletedState());
  }
}