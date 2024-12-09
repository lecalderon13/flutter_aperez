import 'package:flutter/material.dart';
import 'package:hola_mundo_app/presentation/Screens/Counters/counter_function_screendart.dart';
import 'package:hola_mundo_app/presentation/Screens/Counters/counter_screen.dart';
import 'package:hola_mundo_app/presentation/Screens/Counters/counter_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//Para que aparezca el widget debes guardarlo o no aparecera. Reemplazar en home.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false, 
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amber),
        home: const CounterFunctionsScreenState());
  }
}
