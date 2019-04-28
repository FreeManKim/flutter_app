import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/five.dart';
import 'package:flutter_app/ui/four.dart';
import 'package:flutter_app/ui/one.dart';
import 'package:flutter_app/ui/three.dart';
import 'package:flutter_app/ui/two.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
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