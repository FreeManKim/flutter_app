import 'package:flutter/material.dart';
import 'dart:math' show Random;
import 'package:flutter/cupertino.dart';

class DetailPage extends StatefulWidget {
  @override
  createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _counter = 0;
  Color _color = Colors.blueGrey;
  var _colors = Colors.accents;
  bool _toggled = true;

  @override
  void initState() {
    super.initState();
    _color = _getRandomColors();
    _toggled = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("DetailPage Screen"),
        backgroundColor: _color,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: new TextStyle(
                color: Color.fromRGBO(66, 165, 245, 1.0),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                // Navigate back to first screen when tapped!
                Navigator.pop(context);
              },
              child: new Text('Go back!'),
            ),
            Theme.of(context).platform == TargetPlatform.iOS
                ? CupertinoSwitch(
                    value: _toggled,
                    activeColor: _color,
                    onChanged: (bool toggled) {
                      _toggled = toggled;
                      _color = _getRandomColors();
                    },
                  )
                : Switch(
                    value: _toggled,
                    activeColor: _color,
                    onChanged: (bool toggled) {
                      setState(() {
                        _toggled = toggled;
                        _color = _getRandomColors();
                      });
                    },
                  )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter++;
          setState(() {
            _color = _getRandomColors();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Color _getRandomColors() {
    var i = Random().nextInt(_colors.length);
    print(i);
    return _colors[i];
  }
}
