import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {"elevation": 0.0, "label": "Elevation 0"},
  {"elevation": 1.0, "label": "Elevation 1"},
  {"elevation": 2.0, "label": "Elevation 2"},
  {"elevation": 3.0, "label": "Elevation 3"},
  {"elevation": 4.0, "label": "Elevation 4"},
  {"elevation": 5.0, "label": "Elevation 5"}
];

class CardScreen extends StatelessWidget {
  static const String name = "cards_screen";
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards_Screen"),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Agrega un padding opcional
        child: Column(
          children: [
            ...cards.map(
              (card) => _CardType1(
                  label: card["label"], elevation: card["elevation"]),
            ),
            ...cards.map(
              (card) => _CardType2(
                  label: card["label"], elevation: card["elevation"]),
            ),

            ...cards.map(
              (card) => _CardType3(
                  label: card["label"], elevation: card["elevation"]),
            ),

            ...cards.map(
              (card) => _CardType4(
                  label: card["label"], elevation: card["elevation"]),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  const _CardType1({
    super.key,
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ), // Botón en la esquina superior derecha
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label), // Texto en la esquina inferior izquierda
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  const _CardType2({
    super.key,
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;



    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      side: BorderSide(color: colors.outline)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ), // Botón en la esquina superior derecha
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label), // Texto en la esquina inferior izquierda
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  const _CardType3({
    super.key,
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {


    final colors = Theme.of(context).colorScheme;


    return Card(
      color: colors.surface,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ), // Botón en la esquina superior derecha
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("$label - Filled"), // Texto en la esquina inferior izquierda
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  const _CardType4({
    super.key,
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {


    final colors = Theme.of(context).colorScheme;


    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network("https://picsum.photos/id/${elevation.toInt()}/600/400",
          height: 400,
          fit: BoxFit.cover,
          ),
      
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25))
              ),
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ), // Botón en la esquina superior derecha
          ),    
        ],
      ),
    );
  }
}