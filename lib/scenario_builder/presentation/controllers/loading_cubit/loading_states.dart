abstract class LoadingSceneStates {}

class LoadingSceneInitialState extends LoadingSceneStates {}

class LoadingSceneChangedState extends LoadingSceneStates
{
  // final int index;
  //
  // LoadingSceneChangedState(this.index);
}

class LoadingSceneCompletedState extends LoadingSceneStates {}