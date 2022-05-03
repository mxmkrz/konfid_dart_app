import 'package:flutter/material.dart';
import 'package:konfiden_app/pages/main_frame/main_screen.dart';


void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MainScreen()
    );
  }
}


