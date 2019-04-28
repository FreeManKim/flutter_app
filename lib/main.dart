// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:flutter_app/bottomTab/AppPage.dart';
import 'package:flutter_app/bottomTab/BottomNavigationWidget.dart';
import 'package:flutter_app/ui/five.dart';
import 'package:flutter_app/ui/four.dart';
import 'package:flutter_app/ui/one.dart';
import 'package:flutter_app/ui/three.dart';
import 'package:flutter_app/ui/two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme: new ThemeData(
        primaryColor: Colors.yellow,
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: Colors.yellow,
          size: 35.0,
        ),
      ),
      home: new Scaffold(
//          body: BottomNavigationWidget()
          body: AppPage()
      ),

    );
  }
}





