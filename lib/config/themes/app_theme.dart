import 'package:flutter/material.dart';

Color mainColorApp = const Color.fromARGB(237, 169, 198, 245);

List<Color> _customColor = [
  mainColorApp,//0
  Colors.red,//1
  Colors.blue,//2
  Colors.green,//3
  Colors.purple,//4
  Colors.yellow,//5
];

class AppTheme{
  
  final int selectedColor;

  AppTheme({required this.selectedColor})
  : assert ( selectedColor >= 0 && selectedColor <= _customColor.length - 1, 'The colors must be beetwen 0 and ${_customColor.length - 1}'); 

  ThemeData theme(){

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _customColor[selectedColor],
  );

  }
}