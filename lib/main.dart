import 'package:flutter/material.dart';
import 'package:flutterredux/home.dart';
import 'package:flutterredux/about.dart';
import 'package:flutterredux/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
