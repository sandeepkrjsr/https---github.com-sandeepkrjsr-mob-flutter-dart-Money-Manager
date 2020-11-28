import 'package:flutter/material.dart' show BuildContext, StatelessWidget, Widget, runApp;

import 'Views/BottomNavigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigator();
  }
}