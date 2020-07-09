import 'package:flutter/material.dart';
import 'package:sign_up_page/constants.dart';
import 'package:sign_up_page/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: blueMaterialColor),
      routes: {
        '/': (BuildContext context) {
          return Login();
        }
      },
    );
  }
}
