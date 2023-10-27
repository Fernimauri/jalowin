import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.blue,
  Colors.green,
  Colors.black,
  Colors.purple,
  Colors.orange,
  Colors.teal
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Solo se encuentra los Colores en un rango de 0 a ${_colorThemes.length - 1}');

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
    );
  }
}
