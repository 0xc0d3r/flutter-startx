import 'package:flutter/material.dart';

import 'screens/charts.dart';
import 'screens/graphs.dart';
import 'screens/home.dart';
import 'screens/startup_name_generator.dart';

import 'themes/Colors.dart';

void main() => runApp(FlutterUseCasesApp());

class FlutterUseCasesApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => Home(),
    "/charts": (BuildContext context) => Charts(),
    "/graphs": (BuildContext context) => Graphs(),
    "/startupNameGenerator": (BuildContext context) => StartupNameGenerator()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Components',
        theme: new ThemeData(
          primaryColor: appDarkGreyColor,
        ),
        home: Home(),
        routes: routes);
  }
}
