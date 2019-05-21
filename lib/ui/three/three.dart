import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/route/category_route.dart';
import 'package:flutter_app/ui/two/TwoListItemWidget.dart';

class ThreePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThreePageState();
}

class ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CategoryRoute(),
    );

  }
}
// Scaffold(
//        backgroundColor: Colors.green[100],
//        appBar: AppBar(
//          backgroundColor: Colors.green[100],
//          title: Text("三月"),
//        ),
//        body: new Container(
//          child: ListView(
//            children: <Widget>[
//              new TwoItem(),
//              new TwoItem(),
//              new TwoItem(),
//              new TwoItem(),
//              new TwoItem(),
//              new TwoItem(),
//              new TwoItem(),
//            ],
//          ),
//        ),
//      )
