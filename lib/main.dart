// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:flutter_app/five.dart';
import 'package:flutter_app/four.dart';
import 'package:flutter_app/one.dart';
import 'package:flutter_app/three.dart';
import 'package:flutter_app/two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.AppBar.actions',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  var isCheckBox = false;

  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
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
            _CheckBoxStateWidget(),
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
        Image.network(
          "https://pic4.zhimg.com/v2-fc84cbc4a4e93949655dde102e45745c_xl.jpg",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // ...
            },
          ),
        ],
      ),
      body: column,
//      bottomSheet: _TabsStateWidget(),
      bottomNavigationBar: _BottomNavigationWidget(),
      backgroundColor: Colors.orange,
    );
  }
}

class _BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<_BottomNavigationWidget> {
  var isTabOne = false;
  var isTabTow = false;
  var isTabThree = false;
  var isTabFour = false;
  var isTabFive = false;
  int _currentIndex = 0;
  List<Widget> _list = List<Widget>();

  void _toggleFavorite(var a) {
    setState(() {
      switch (a) {
        case 0:
          isTabOne = isTabOne ? false : true;
          isTabTow = false;
          isTabThree = false;
          isTabFour = false;
          break;
        case 1:
          isTabOne = false;
          isTabTow = isTabTow ? false : true;
          isTabThree = false;
          isTabFour = false;
          break;
        case 2:
          isTabOne = false;
          isTabTow = false;
          isTabThree = isTabThree ? false : true;
          isTabFour = false;
          break;
        case 3:
          isTabOne = false;
          isTabTow = false;
          isTabThree = false;
          isTabFour = isTabFour ? false : true;
          break;
        case 4:
          isTabOne = false;
          isTabTow = false;
          isTabThree = false;
          isTabFour = false;
          isTabFive = isTabFive ? false : true;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabTextStyle1 = TextStyle(
      fontSize: 12,
      color: isTabOne ? Colors.deepOrangeAccent : Colors.black,
    );
    final tabTextStyle2 = TextStyle(
      fontSize: 12,
      color: isTabTow ? Colors.deepOrangeAccent : Colors.black,
    );
    final tabTextStyle3 = TextStyle(
      fontSize: 12,
      color: isTabThree ? Colors.deepOrangeAccent : Colors.black,
    );
    final tabTextStyle4 = TextStyle(
      fontSize: 12,
      color: isTabFour ? Colors.deepOrangeAccent : Colors.black,
    );
    final tabTextStyle5 = TextStyle(
      fontSize: 12,
      color: isTabFive ? Colors.deepOrangeAccent : Colors.black,
    );
    return Scaffold(
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                !isTabOne ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
              title: Text(
                "首页",
                style: tabTextStyle1,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                !isTabTow ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
              title: Text(
                "首页",
                style: tabTextStyle2,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                !isTabThree ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
              title: Text(
                "首页",
                style: tabTextStyle3,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                !isTabFour ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
              title: Text(
                "首页",
                style: tabTextStyle4,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                !isTabFive ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
              title: Text(
                "首页",
                style: tabTextStyle5,
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _toggleFavorite(index);
          });
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    _list
      ..add(OnePage())
      ..add(TwoPage())
      ..add(ThreePage())
      ..add(FourPage())
      ..add(FivePage());
    super.initState();
  }
}

class _CheckBoxStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CheckBoxState();
}

class _CheckBoxState extends State<_CheckBoxStateWidget> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected, //当前状态
          onChanged: (value) {
            //重新构建页面
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.white, //选中时的颜色
          checkColor: Colors.pink,
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value;
            });
          },
        )
      ],
    );
  }
}

class _TabsStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TabsState();
}

class _TabsState extends State<_TabsStateWidget> {
  var isTabOne = false;
  var isTabTow = false;
  var isTabThree = false;
  var isTabFour = false;
  var isTabFive = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    void _toggleFavorite(var a) {
      setState(() {
        switch (a) {
          case 1:
            isTabOne = isTabOne ? false : true;
            isTabTow = false;
            isTabThree = false;
            isTabFour = false;
            break;
          case 2:
            isTabOne = false;
            isTabTow = isTabTow ? false : true;
            isTabThree = false;
            isTabFour = false;
            break;
          case 3:
            isTabOne = false;
            isTabTow = false;
            isTabThree = isTabThree ? false : true;
            isTabFour = false;
            break;
          case 4:
            isTabOne = false;
            isTabTow = false;
            isTabThree = false;
            isTabFour = isTabFour ? false : true;
            break;
          case 5:
            isTabOne = false;
            isTabTow = false;
            isTabThree = false;
            isTabFour = false;
            isTabFive = isTabFive ? false : true;
            break;
        }
      });
    }

    final tabTextStyle = TextStyle(
      fontSize: 12,
      color: isTabTow ? Colors.deepOrangeAccent : Colors.black,
    );
    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            _toggleFavorite(2);
          },
          child: Column(
            children: <Widget>[
              Text(
                "首页",
                style: tabTextStyle,
              ),
              Image.asset(
                !isTabTow ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
          color: !isTabFour ? Colors.white : Colors.white,
          textColor: Colors.white,
        ),
        FlatButton(
          onPressed: () {
            _toggleFavorite(3);
          },
          child: Column(
            children: <Widget>[
              Text(
                "生活",
                style: tabTextStyle,
              ),
              Image.asset(
                !isTabThree ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
          color: !isTabFour ? Colors.white : Colors.white,
          textColor: Colors.white,
        ),
        IconButton(
            icon: (!isTabFour
                ? Icon(Icons.accessible)
                : Icon(Icons.accessible_forward)),
            color: (isTabFour ? Colors.blue : Colors.pink),
            onPressed: () {
              _toggleFavorite(1);
            }),
        FlatButton(
          onPressed: () {
            _toggleFavorite(4);
          },
          child: Column(
            children: <Widget>[
              Text(
                "我的",
                style: tabTextStyle,
              ),
              Image.asset(
                !isTabFour ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
          color: !isTabFour ? Colors.white : Colors.white,
          textColor: Colors.white,
        ),
        FlatButton(
          onPressed: () {
            _toggleFavorite(5);
          },
          child: Column(
            children: <Widget>[
              Text(
                "Flags",
                style: tabTextStyle,
              ),
              Image.asset(
                !isTabFive ? "assets/wechat1.png" : "assets/QQ1.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
          color: !isTabFour ? Colors.white : Colors.white,
          textColor: Colors.white,
        )
      ],
    );
  }
}
