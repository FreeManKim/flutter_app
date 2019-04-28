/// Created with Android Studio.
/// User: 三帆
/// Date: 16/01/2019
/// Time: 11:16
/// email: sanfan.hx@alibaba-inc.com
/// target:  app首页

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/five.dart';
import 'package:flutter_app/ui/four.dart';
import 'package:flutter_app/ui/one.dart';
import 'package:flutter_app/ui/three.dart';
import 'package:flutter_app/ui/two.dart';

const int ThemeColor = 0xFFC91B3A;

class AppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<AppPage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  bool isSearch = false;
  String data = '无';
  String data2ThirdPage = '这是传给ThirdPage的值';
  String appBarTitle = tabData[0]['text'];
  static List tabData = [
    {
      'text': '榴莲',
      'icon': new Icon(Icons.accessible),
      'unicon': new Icon(Icons.accessible_forward)
    },
    {
      'text': '草莓',
      'icon': new Icon(Icons.filter_1),
      'unicon': new Icon(Icons.filter_2)
    },
    {
      'text': '椰子',
      'icon': new Icon(Icons.import_contacts),
      'unicon': new Icon(Icons.camera)
    },
    {
      'text': '牛油果',
      'icon': new Icon(Icons.cake),
      'unicon': new Icon(Icons.favorite)
    },
    {
      'text': '哈密瓜',
      'icon': new Icon(Icons.vpn_lock),
      'unicon': new Icon(Icons.vpn_key)
    }
  ];

  List<Widget> myTabs = [];

  @override
  void initState() {
    super.initState();
    controller = new TabController(
        initialIndex: 0, vsync: this, length: 5); // 这里的length 决定有多少个底导 submenus
    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(new Tab(text: tabData[i]['text'], icon: tabData[i]['icon']));
    }
    controller.addListener(() {
      if (controller.indexIsChanging) {
        _onTabChange(controller.previousIndex);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(controller: controller, children: <Widget>[
        new OnePage(),
        new TwoPage(),
        new ThreePage(),
        new FourPage(),
        new FivePage()
      ]),
      bottomNavigationBar: Material(
        color: const Color(0xFFF0EEEF), //底部导航栏主题颜色
        child: SafeArea(
          child: Container(
            height: 65.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: const Color(0xFFd0d0d0),
                  blurRadius: 3.0,
                  spreadRadius: 2.0,
                  offset: Offset(-1.0, -1.0),
                ),
              ],
            ),
            child: TabBar(
                controller: controller,
                indicatorColor: Theme.of(context).primaryColor,
                //tab标签的下划线颜色
                // labelColor: const Color(0xFF000000),
                indicatorWeight: 3.0,
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: const Color(0xFF8E8E8E),
                tabs: myTabs),
          ),
        ),
      ),
    );
  }

  void _onTabChange(int index) {
    print(index);
    if (this.mounted) {
      this.setState(() {
        appBarTitle = tabData[controller.index]['text'];
      });
    }
  }
}
