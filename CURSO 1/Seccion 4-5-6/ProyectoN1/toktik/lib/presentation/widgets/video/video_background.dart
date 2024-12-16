import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  
  final List<Color> colors;
  final List<double> stops;

  const VideoBackground({super.key, 
      this.colors = const[
      Colors.transparent,
      Colors.blue
      ],
      this.stops= const [0.0,1.0]
      });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: const [
                       Colors.transparent,
                       Colors.grey,
                       Colors.blueGrey
                    ],stops:stops,
                    begin:Alignment.bottomCenter
                    ))));
  }
}
