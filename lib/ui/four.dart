import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/route/MyCategory.dart';
import 'package:flutter_app/ui/route/converter_route.dart';
import 'package:flutter_app/ui/two/Unit.dart';

import 'backdrop.dart';

class FourPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FourPageState();
}

class FourPageState extends State<FourPage> {
  final _categories = <MyCategory>[];
  MyCategory _currentCategory;

  ConverterRoute _frontPanel;

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];
  static const _categoryIcon = <IconData>[
    Icons.cake,
    Icons.airline_seat_legroom_extra,
    Icons.map,
    Icons.details,
    Icons.strikethrough_s,
    Icons.leak_add,
    Icons.import_export,
    Icons.adb
  ];
  static const _baseColors = <ColorSwatch>[
    ColorSwatch(0xFF6AB7A8, {
      'highlight': Color(0xFF6AB7A8),
      'splash': Color(0xFF0ABC9B),
    }),
    ColorSwatch(0xFFFFD28E, {
      'highlight': Color(0xFFFFD28E),
      'splash': Color(0xFFFFA41C),
    }),
    ColorSwatch(0xFFFFB7DE, {
      'highlight': Color(0xFFFFB7DE),
      'splash': Color(0xFFF94CBF),
    }),
    ColorSwatch(0xFF8899A8, {
      'highlight': Color(0xFF8899A8),
      'splash': Color(0xFFA9CAE8),
    }),
    ColorSwatch(0xFFEAD37E, {
      'highlight': Color(0xFFEAD37E),
      'splash': Color(0xFFFFE070),
    }),
    ColorSwatch(0xFF81A56F, {
      'highlight': Color(0xFF81A56F),
      'splash': Color(0xFF7CC159),
    }),
    ColorSwatch(0xFFD7C0E2, {
      'highlight': Color(0xFFD7C0E2),
      'splash': Color(0xFFCA90E5),
    }),
    ColorSwatch(0xFFCE9A9A, {
      'highlight': Color(0xFFCE9A9A),
      'splash': Color(0xFFF94D56),
      'error': Color(0xFF912D2D),
    }),
  ];

  @override
  void initState() {
    super.initState();
    _buildCategories();

  }

  void _buildCategories() async {
    final jsonCategory =
    DefaultAssetBundle.of(context).loadString('assets/goofy_units.json');
    final dataJson =
        DefaultAssetBundle.of(context).loadString('assets/regular_units.json');
    final decoder = JsonDecoder();
    final data = decoder.convert(await dataJson);
    var currentIndex = 0;
    for (var key in data.keys) {
      if (data is! Map) {
        throw ("data  is not  map");
      }
      final List<Unit> units =
          data[key].map<Unit>((dynamic data) => Unit.fromJson(data)).toList();
      var categories = MyCategory(
          name:key,
          color: _baseColors[currentIndex],
          iconLocation:_categoryIcon[currentIndex],
          onTap: _onCategoryTap,
          units: units);
      setState(() {
        if (currentIndex == 0) {
          _currentCategory = categories;
        }
        _categories.add(categories);
      });
      currentIndex += 1;
    }
  }

  Widget _buildCategoryWidgets() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => _categories[index],
      itemCount: _categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final body = Backdrop(
      currentCategory: _currentCategory,
      backPanel: Center(
        child: _buildCategoryWidgets(),
      ),
      backTitle: Center(
        child: Text('backTitle'),
      ),
      frontPanel: ConverterRoute(category: _currentCategory),
      frontTitle: Center(
        child: Text(_currentCategory.name),
      ),
    );

    return Scaffold(
      body: body,
    );
  }

  /// Returns a list of mock [Unit]s.
  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  /// Function to call when a [Category] is tapped.
  void _onCategoryTap(MyCategory category) {
    setState(() {
      _currentCategory = category;
    });
  }
}
