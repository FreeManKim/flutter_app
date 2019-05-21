import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.circular(20);

class TwoBrandWidget extends StatelessWidget {
  final String imageUrl;
  final String nextPageUrl;

  const TwoBrandWidget({Key key, this.imageUrl, this.nextPageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      borderRadius: _borderRadius,
      highlightColor: Colors.orangeAccent[100],
      splashColor: Colors.teal[100],
      onTap: () {
        print(nextPageUrl + "" + imageUrl);
      },
      child: Image.network(
        imageUrl,
      ),
    );
  }
}
