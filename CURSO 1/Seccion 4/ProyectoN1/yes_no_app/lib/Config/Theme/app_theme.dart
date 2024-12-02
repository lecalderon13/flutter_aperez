import 'package:flutter/material.dart';

const Color colorPersonalizado = Color.fromARGB(255, 3, 53, 145);

const List<Color> colores = [
  colorPersonalizado,
  Colors.blueGrey,
  Colors.grey,
  Colors.lightBlueAccent,
  Colors.limeAccent
];

class AppTheme {
  final int colorElegido;

  AppTheme({this.colorElegido = 0}) : assert(colorElegido >= 1,
                                     "Colores entre 0 y ${colorElegido}");

  //Informacion que construira el tema
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: colores[colorElegido],
        //Modo oscuro
        //brightness: Brightness.dark
        );
  }
}
