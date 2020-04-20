import 'package:flutter/material.dart';
import 'package:flutterredux/about.dart';
import 'package:flutterredux/home.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterredux/models/app_state.dart';
import 'package:flutterredux/redux/reducers.dart';
import 'package:flutterredux/settings.dart';
import 'package:redux/redux.dart';
import 'package:flutterredux/redux/reducers.dart';

void main() {
  final _initialState = AppState(sliderFontSize: 0.5);
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);
  runApp(MyApp(
    store: _store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
        },
      ),
      store: store,
    );
  }
}
