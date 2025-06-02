import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  static const name = "animated_screen";

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  // Variables para la animación
  double _width = 120;
  double _height = 240;
  Color _color = Colors.teal;
  double _borderRadius = 10;
  final _random = Random();

  void _changeShape() {
    setState(() {
      _width = _random.nextInt(300) + 50;
      _height = _random.nextInt(300) + 50;
      _borderRadius = _random.nextInt(100).toDouble();
      
      _color = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeShape, // Cambiado a _changeShape
        child: const Icon(Icons.play_circle_fill_outlined),
      ),
    );
  }
}