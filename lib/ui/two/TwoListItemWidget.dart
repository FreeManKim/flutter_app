import 'package:flutter/material.dart';

// item 布局
class TwoItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TwoItemState();
  TwoItem(String key1,String value);
}

class TwoItemState extends State<TwoItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(10),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          highlightColor: Colors.orangeAccent[100],
          splashColor: Colors.teal[100],
          onTap: () {
            print("this is InkWell onClik event ");
          },
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Image.network(
                      "http://img17.3lian.com/d/file/201701/20/9a097c8e91d7b3549a0918d7d2d9fe86.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Text(
                  "这是一个item",
                  style: new TextStyle(fontFamily: 'PikaPika'),
                ),
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
