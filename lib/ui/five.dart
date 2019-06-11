import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/mould/bingEntity.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';

// ignore: must_be_immutable
class FivePage extends StatefulWidget {
  List<BingEntity> items = new List();

  @override
  State<StatefulWidget> createState() => MyApp(items);
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

class MyApp extends State<FivePage> {
  final List<BingEntity> items;

  MyApp(this.items) : super();

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    final title = '必应壁纸';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            var isFavorite2 = items[index].isFavorite;
            if (isFavorite2 == null) {
              isFavorite2 = false;
            }
            return new Stack(
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
                  child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          new CircularProgressIndicator(),
                      imageUrl: ('${items[index].url}')),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '${items[index].desc}',
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Positioned(
                    left: 100.0,
                    top: 170.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          color: Colors.transparent,
                          alignment: Alignment.bottomRight,
                          margin: new EdgeInsets.fromLTRB(0.0, 0.0, 10, 0.0),
                          child: (FlatButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              icon: Icon(Icons.share, color: Colors.blue),
                              label: Text("分享"))),
                        ),
                        Container(
                          color: Colors.transparent,
                          alignment: Alignment.bottomRight,
                          margin: new EdgeInsets.fromLTRB(0.0, 0.0, 10, 0.0),
                          child: FlatButton.icon(
                              onPressed: () {
                                setState(() {
                                  items[index].setFavorite(!isFavorite2);
                                });
                              },
                              color: Colors.white,
                              icon: Icon(Icons.favorite,
                                  color:
                                      isFavorite2 ? Colors.pink : Colors.grey),
                              label: Text('${items[index].favorite}')),
                        ),
                        Container(
                          color: Colors.transparent,
                          alignment: Alignment.bottomRight,
                          margin: new EdgeInsets.fromLTRB(0.0, 0.0, 10, 0.0),
                          child: FlatButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              icon: Icon(Icons.cloud_download,
                                  color: Colors.blue),
                              label: Text('${items[index].download}')),
                        )
                      ],
                    )),
              ],
            );
          },
        ),
      ),
    );
  }

  void initData() async {
    List<BingEntity> datas = new List();
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/HallstattAustria_PT-BR9407016733_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/Aoraki_ZH-CN7776353328_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/ZoomOut_ZH-CN4471982075_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/EtretatSunrise_ZH-CN10891175350_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/MozambiqueSandbar_EN-AU11463522567_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/QingMingHuangShan_ZH-CN12993895964_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/RainierMilkyWay_ZH-CN9404321904_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/MatunuskaGlacier_ZH-CN11670641539_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/CasaBatllo_ZH-CN2826447794_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    datas.add(new BingEntity(
        "海岸红杉",
        "亨利考威尔红杉州立公园中的海岸红杉，加利福尼亚 (© Gallery Stock) | 必应每日高清壁纸 - 精彩,从这里开始",
        "http://h1.ioliu.cn/bing/HidingEggs_ZH-CN2732414254_1920x1080.jpg",
        Random().nextInt(1509),
        Random().nextInt(1509),
        false));
    setState(() {
      items.clear();
      items.addAll(datas);
    });
  }
}
