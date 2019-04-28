import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/MyAppBar.dart';
import 'package:flutter_app/main.dart';

class FourPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FourPageState();
}

class FourPageState extends State<FourPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("四页"),
      ),
      body: SingleChildScrollView(
        child: Stack(

          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.topLeft,
              child: FlatButton(
                child: Text("控制底部tab栏位"),
                color: Colors.blueAccent,
                onPressed: (){

                },
              ),
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
              child:  FlatButton(
                child: Text("跳转下一页面"),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SecondScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
