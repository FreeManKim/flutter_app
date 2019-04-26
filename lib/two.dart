import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Text(
            "Hello World 你好你好",
            style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 200, 0),
                wordSpacing: 10),
          ),
          Text(
            "Hello World 你好你好",
            style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 200, 0),
                wordSpacing: 10),
          ),
          RaisedButton(
            onPressed: () => print('RaisedButton pressed'),
            child: Text('BUTTON'),
            color: Colors.black,
            textColor: Colors.white,
          ),
          FlatButton(
            onPressed: () => print("flatbutton"),
            child: Text("FlatButton"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Column(
              children: <Widget>[
                Text(
                  "六月",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 200, 0),
                      wordSpacing: 10),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                  margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://pic4.zhimg.com/v2-fc84cbc4a4e93949655dde102e45745c_xl.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  margin: new EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://pic4.zhimg.com/v2-fc84cbc4a4e93949655dde102e45745c_xl.jpg"),
                          fit: BoxFit.contain)),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () => print('RaisedButton pressed'),
                child: Text('BUTTON'),
                color: Colors.black,
                textColor: Colors.white,
                padding: EdgeInsets.all(20),
              ),
              FlatButton(
                onPressed: () => print("flatbutton"),
                child: Text("FlatButton"),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                margin: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://pic4.zhimg.com/v2-fc84cbc4a4e93949655dde102e45745c_xl.jpg"),
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
                    "张达明",
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
                                "https://pic4.zhimg.com/v2-fc84cbc4a4e93949655dde102e45745c_xl.jpg"),
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
                                "https://pic4.zhimg.com/v2-fc84cbc4a4e93949655dde102e45745c_xl.jpg"),
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
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network("http://image.fosunholiday.com/foliday/app3/brand/ic_brand_clubmed.png",
                  width: 200,),
                  Image.network("http://image.fosunholiday.com/foliday/app3/brand/ic_brand_atlantis.png",
                  width: 100,),
                ],
                mainAxisSize: MainAxisSize.min,
              ),

              Image.network("http://image.fosunholiday.com/foliday/app3/brand/ic_brand_thoomas.png"),
              Image.network("http://image.fosunholiday.com/foliday/app3/brand/ic_brand_foryou.png"),
              Image.network("http://image.fosunholiday.com/ic_brand_fshow.png"),
              Image.network("http://image.fosunholiday.com/foliday/app3/brand/ic_brand_mini.png"),
              Image.network("http://image.fosunholiday.com/foliday/app3/brand/ic_brand_ibon.png"),

            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 90,
                height: 90,
                color: Colors.green,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
            ],
          ),
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
