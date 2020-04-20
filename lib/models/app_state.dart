import 'package:flutter/material.dart';

class AppState {
  double sliderFontSize;
  bool bold;
  bool italic;

  AppState(
      {@required this.sliderFontSize, this.bold = false, this.italic = false});
  AppState.fromAppState(AppState appState){
    sliderFontSize =appState.sliderFontSize;
    bold=appState.bold;
    italic=appState.italic;

  }
double get viewFontSize=> sliderFontSize * 50 ;
}
