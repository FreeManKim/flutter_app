import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'two_brand_item_Widget.dart';

class Brand extends StatelessWidget {
  static const urls = <String>[
    'http://image.fosunholiday.com/foliday/app3/brand/ic_brand_clubmed.png',
    'http://image.fosunholiday.com/foliday/app3/brand/ic_brand_atlantis.png',
    'http://image.fosunholiday.com/foliday/app3/brand/ic_brand_foryou.png',
    'http://image.fosunholiday.com/foliday/app3/brand/ic_brand_thoomas.png',
    'http://image.fosunholiday.com/ic_brand_fshow.png',
    'http://image.fosunholiday.com/foliday/app3/brand/ic_brand_mini.png',
    'http://image.fosunholiday.com/foliday/app3/brand/ic_brand_ibon.png'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      TwoBrandWidget(
                        name: "白日依山尽",
                        imageUrl: urls[0],
                        nextPageUrl: "https://baidu.com",
                        flex: 0,
                      ),
                      Row(
                        children: <Widget>[
                          TwoBrandWidget(
                            name: "白日依山尽",
                            imageUrl: urls[2],
                            nextPageUrl: "https://baidu.com",
                          ),
                          TwoBrandWidget(
                            name: "白日依山尽",
                            imageUrl: urls[3],
                            nextPageUrl: "https://baidu.com",
                          ),
                        ],
                      ),
                    ],
                  ),
                  flex: 2,
                ),
                TwoBrandWidget(
                  name: "白日依山尽",
                  imageUrl: urls[1],
                  nextPageUrl: "https://baidu.com",
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            TwoBrandWidget(
              name: "白日依山尽",
              imageUrl: urls[4],
              nextPageUrl: "https://baidu.com",
            ),
            TwoBrandWidget(
              name: "白日依山尽",
              imageUrl: urls[5],
              nextPageUrl: "https://baidu.com",
            ),
            TwoBrandWidget(
              name: "白日依山尽",
              imageUrl: urls[6],
              nextPageUrl: "https://baidu.com",
            ),
          ],
        ),
      ],
    );
  }
}
