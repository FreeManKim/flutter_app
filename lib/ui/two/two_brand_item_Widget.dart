import 'package:flutter/material.dart';
import 'package:flutter_app/ui/two/DetailPage.dart';


final _borderRadius = BorderRadius.circular(1000);

class TwoBrandWidget extends StatelessWidget {
  final String imageUrl;
  final String nextPageUrl;
  final String name;
  final int flex;

  const TwoBrandWidget({
    Key key,
    @required this.name,
    @required this.imageUrl,
    @required this.nextPageUrl,
    this.flex = 1,
  })  : assert(name != null),
        assert(imageUrl != null),
        assert(nextPageUrl != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    // TODO: Using the Navigator, navigate to the [ConverterRoute]
    Navigator.push(context, new MaterialPageRoute(builder: (context)=>new DetailPage()));
//    Navigator.push(context, new MaterialPageRoute(builder: (context)=>new SecondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: InkWell(
        borderRadius: _borderRadius,
//      highlightColor: Colors.orangeAccent[100],
//      splashColor: Colors.teal[100],
        onTap: () {
          print(nextPageUrl + "" + imageUrl);
          _navigateToConverter(context);
        },
        child: Image.network(
          imageUrl,
        ),
      ),
      flex: flex,
    );
  }
}
