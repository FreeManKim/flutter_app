// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ui/two/Unit.dart';
import 'package:meta/meta.dart';

const _padding = EdgeInsets.all(16.0);

/// [ConverterRoute] where users can input amounts to convert in one [Unit]
/// and retrieve the conversion in another [Unit] for a specific [Category].
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
class ConverterRoute extends StatefulWidget {
  /// This [Category]'s name.
  final String name;

  /// Color for this [Category].
  final Color color;

  /// Units for this [Category].
  final List<Unit> units;

  /// This [ConverterRoute] requires the name, color, and units to not be null.
  const ConverterRoute({
    @required this.name,
    @required this.color,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(units != null);

  @override
  _ConverterRouteState createState() => _ConverterRouteState();
}

class _ConverterRouteState extends State<ConverterRoute> {
  String _labelName = 'Default text field';
  String _inputString = '';
  final dropMenu = [
    DropdownMenuItem<String>(
      child: Text("江海"),
      value: "江海",
    ),
    DropdownMenuItem<String>(
      child: Text("江湖"),
      value: "江湖",
    ),
    DropdownMenuItem<String>(
      child: Text("江河"),
      value: "江河",
    ),
    DropdownMenuItem<String>(
      child: Text("江洋"),
      value: "江洋",
    ),
  ];

  // TODO: Set some variables, such as for keeping track of the user's input
  // value and units

  // TODO: Determine whether you need to override anything, such as initState()

  // TODO: Add other helper functions. We've given you one, _format()

  /// Clean up conversion; trim trailing zeros, e.g. 5.500 -> 5.5, 10.0 -> 10
  String _format(double conversion) {
    var outputNum = conversion.toStringAsPrecision(7);
    if (outputNum.contains('.') && outputNum.endsWith('0')) {
      var i = outputNum.length - 1;
      while (outputNum[i] == '0') {
        i -= 1;
      }
      outputNum = outputNum.substring(0, i + 1);
    }
    if (outputNum.endsWith('.')) {
      return outputNum.substring(0, outputNum.length - 1);
    }
    return outputNum;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create the 'input' group of widgets. This is a Column that

    var _inPutWidget = Padding(
      padding: _padding,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          keyboardType: TextInputType.number,
          style: Theme.of(context).textTheme.display1,
          decoration: InputDecoration(
              labelText: "InPut",
              errorText: "",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
              )),
          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
          onChanged: (String text) {
            print('change $text');
            _inputString=text;
          },
        ),
      ),
    );
    // TODO:includes the input value, and 'from' unit [Dropdown].
    var dropdownButtonFormField = Padding(
        padding: _padding,
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              hintText: 'Enter text',
              labelText: _labelName,
              contentPadding: const EdgeInsets.all(20.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              isDense: true),
          items: dropMenu,
          onChanged: (String a) {
            print(a);
            setState(() {
              _labelName = a;
            });
          },
        ));

    // TODO: Create a compare arrows icon.
    var icon = Icon(
      Icons.import_export,
    );
    // TODO: Create the 'output' group of widgets. This is a Column that
    var _outPutWidget = Padding(
      padding: _padding,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: RichText(
          text: TextSpan(
            text: _inputString,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            )
          ),
        ),
      ),
    );
    // includes the output value, and 'to' unit [Dropdown].

    // TODO: Return the input, arrows, and output widgets, wrapped in a Column.

    // TODO: Delete the below placeholder code.

    return SingleChildScrollView(
        child: Container(
      color: widget.color,
      child: Column(
        children: <Widget>[
          _inPutWidget,
          dropdownButtonFormField,
          icon,
          _outPutWidget,
        ],
      ),
    ));
  }
}
