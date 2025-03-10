
import '../../core/core.dart';
import '../../models/model.dart';

class WelcomeBloc extends BaseCubit<WelcomeDataModel, WelcomeDataParam> {
  WelcomeBloc()
      : super(
          InitState(),
          model: WelcomeDataModel(selectWordLength: 5),
          param: WelcomeDataParam(),
        );

  @override
  void initState() {
    emit(LoadingState());
    emit(LoadedState(model, param));
  }

  void onChangeWordLenth(int value) {
    model?.selectWordLength = value;
    emit(LoadedState(model, param));
  }
}
