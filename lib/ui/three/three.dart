import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/two/TwoListItemWidget.dart';

class ThreePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThreePageState();
}

class ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text("三月"),
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
            new TwoItem("一江春水向东流","http://i0.hdslb.com/bfs/article/15b9b2b777a6a7ebda532e7498160665b5a39873.jpg"),
          ],
        ),
      ),
    );
  }
}
