import 'package:flutter/material.dart';

import 'two/DetailPage.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new DetailPage(),
      ),
    );
  }
}
