import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Brand.dart';
import 'package:flutter_app/ui/two/TwoListItemWidget.dart';

class TwoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TwoPageState();
}

class TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var column = SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                margin: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "http://h1.ioliu.cn/bing/MatunuskaGlacier_ZH-CN11670641539_1920x1080.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "富有拍",
                    style: new TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                        height: 20.0,
                        margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "http://pic4.zhimg.com/v2-fc84cbc4a4e93949655dde102e45745c_xl.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 20.0,
                        height: 20.0,
                        margin: new EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "http://h1.ioliu.cn/bing/MatunuskaGlacier_ZH-CN11670641539_1920x1080.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          new Brand(),
          new TwoItem(),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("好生活"),
      ),
      body: column,
    );
  }


}
