import 'package:flutterredux/models/app_state.dart';
import 'actions.dart';

AppState reducer(AppState previousState, dynamic actions) {
  AppState newState = AppState.fromAppState(previousState);

  if (actions is FontSize) {
    newState.sliderFontSize = actions.payload;
  } else if (actions is Bold){
    newState.bold = actions.payload;
  }
  else if(actions is Italic){
    newState.italic=actions.payload;
  }
  return newState;
}
