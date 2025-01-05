import 'package:flutter/material.dart';

//Lista de colores
const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  //Validacion de que debe elegir un color de los disponibles en la lista colorList. Del 2 al 9
  AppTheme({this.selectedColor = 0
  }): assert(selectedColor >= 0, " Debe seleccionar un color mayor a 0"),
      assert(selectedColor < colorList.length,
       " Debe seleccionar un color mayor a ${colorList.length -1}");

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: AppBarTheme(centerTitle: false)
      );
}
