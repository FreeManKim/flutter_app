import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreePage extends StatefulWidget  {

  @override
  State<StatefulWidget> createState() =>ThreePageState();

}

class ThreePageState extends State<ThreePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("三月"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: 250,
          height: 250,
          child: Stack(
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.black.withAlpha(0),
                      Colors.black12,
                      Colors.black45
                    ],
                  ),
                ),
                child: Text(
                  "Foreground Text",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}