import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brand extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "http://image.fosunholiday.com/foliday/app3/brand/ic_brand_clubmed.png",
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.network(
                            "http://image.fosunholiday.com/foliday/app3/brand/ic_brand_foryou.png",
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Image.network(
                            "http://image.fosunholiday.com/foliday/app3/brand/ic_brand_thoomas.png",
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                flex: 2,
              ),
              Expanded(
                child: Image.network(
                  "http://image.fosunholiday.com/foliday/app3/brand/ic_brand_atlantis.png",
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: Image.network(
                "http://image.fosunholiday.com/ic_brand_fshow.png"),
            flex: 1,
          ),
          Expanded(
            child: Image.network(
                "http://image.fosunholiday.com/foliday/app3/brand/ic_brand_mini.png"),
            flex: 1,
          ),
          Expanded(
            child: Image.network(
                "http://image.fosunholiday.com/foliday/app3/brand/ic_brand_ibon.png"),
            flex: 1,
          ),
        ],
      ),
    ],);
  }
}
