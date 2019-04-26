import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FivePage extends StatefulWidget {
  List<String> items =new List();
  @override
  State<StatefulWidget> createState() => MyApp(items);
}
void initData() {

}
class FivePageState extends State<FivePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ListView 的使用"),
      ),
      body: listView,
    );
  }

  var listView = new ListView(
    children: <Widget>[
      new ListTile(
        leading: new Icon(Icons.image),
        title: new Text("图片"),
      ),
      new ListTile(
        leading: new Icon(Icons.ondemand_video),
        title: new Text("视频"),
      ),
      new ListTile(
        leading: new Icon(Icons.add_shopping_cart),
        title: new Text("购物车"),
      ),
      FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image:
              "http://h1.ioliu.cn/bing/BistiBadlands_ZH-CN5428677883_1920x1080.jpg"),
      CachedNetworkImage(
        placeholder: (context, url) => new CircularProgressIndicator(),
        imageUrl:
            "http://h1.ioliu.cn/bing/Bollenstreek_ZH-CN5400317097_1920x1080.jpg",
      ),
      Stack(
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          Container(
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
            child: Image.network(
                "http://h1.ioliu.cn/bing/CoveSpires_ZH-CN2680932006_1920x1080.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.topLeft,
            child: Text(
              "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
              style: new TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 10, 0.0),
                    child: (FlatButton.icon(
                        onPressed: () {},
                        color: Colors.white,
                        icon: Icon(Icons.share, color: Colors.blue),
                        label: Text("分享"))),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 10, 0.0),
                    child: FlatButton.icon(
                        onPressed: () {},
                        color: Colors.white,
                        icon: Icon(Icons.favorite, color: Colors.pink),
                        label: Text("1190")),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 10, 0.0),
                    child: FlatButton.icon(
                        onPressed: () {},
                        color: Colors.white,
                        icon: Icon(Icons.cloud_download, color: Colors.blue),
                        label: Text("21")),
                  )
                ],
              )),
        ],
      ),
    ],
  );
  var stack = Stack(
    children: <Widget>[
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
        child: Image.network(
            "http://h1.ioliu.cn/bing/YukonEmerald_ZH-CN1893750172_1920x1080.jpg"),
      ),
    ],
  );
  var scaffold = Scaffold(
    appBar: AppBar(
      title: Text("我的"),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.network(
              "http://h1.ioliu.cn/bing/YukonEmerald_ZH-CN1893750172_1920x1080.jpg"),
          FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  "http://h1.ioliu.cn/bing/BistiBadlands_ZH-CN5428677883_1920x1080.jpg"),
          CachedNetworkImage(
            placeholder: (context, url) => new CircularProgressIndicator(),
            imageUrl:
                "http://h1.ioliu.cn/bing/Bollenstreek_ZH-CN5400317097_1920x1080.jpg",
          ),
        ],
      ),
    ),
  );

}

class MyApp extends  State<FivePage> {
  final List<String> items;

  MyApp(this.items);


  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
