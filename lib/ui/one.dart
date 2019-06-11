import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'four.dart';

class OnePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OnePageState();
}

class OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),

        ],
      ),
      //body占屏幕的大部分
      body: new Column(
        children: <Widget>[
          Text(
            '要使用字体，你需要将字体文件导入到项目中。常见的做法是将字体文件放在项目根目录下的 fonts 或者 assets 文件夹中。例如，如果你想要在项目中导入 Raleway 和 Roboto Mono 字体，文件夹结构会像下面这样',
            style: TextStyle(
                fontFamily: 'PikaPika',
                color: Colors.orangeAccent,
                fontSize: 18
            ),
          ),
          Text(
            '要使用字体，你需要将字体文件导入到项目中。常见的做法是将字体文件放在项目根目录下的 fonts 或者 assets 文件夹中。例如，如果你想要在项目中导入 Raleway 和 Roboto Mono 字体，文件夹结构会像下面这样',
            style: TextStyle(
                fontFamily: 'CaoShu',
                color: Colors.blue,
                fontSize: 18
            ),
          ),
          FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context)=>new FourPage()));
          }, child: Text("下一个"))
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
