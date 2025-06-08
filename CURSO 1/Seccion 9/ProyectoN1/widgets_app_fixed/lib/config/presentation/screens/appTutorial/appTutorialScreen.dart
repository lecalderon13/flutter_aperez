import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Exercitation voluptate cillum eu aute dolor irure aliquip.', 'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Ullamco ullamco duis labore quis occaecat culpa laborum id incididunt.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Ea officia exercitation voluptate nostrud amet esse ut exercitation deserunt est enim est.', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  static const name = "tutorial_screen";
  
  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(_onPageChanged);
  }

  void _onPageChanged() {
    final page = pageViewController.page ?? 0;
    if (!endReached && page >= (slides.length - 1.5)) {
      if (mounted) {
        setState(() => endReached = true);
      }
    }
  }

  @override
  void dispose() {
    pageViewController.removeListener(_onPageChanged);
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(
              title: slideData.title, 
              caption: slideData.caption, 
              imageUrl: slideData.imageUrl,
            )).toList(),
          ),

          Positioned(
            right: 20,
            bottom: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Salir'),
            ),
          ),

          if (endReached)
            Positioned(
              bottom: 30,
              right: 30,
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text('Comenzar'),
              )
              .animate(
                onPlay: (controller) => controller.repeat(), // Opcional: para animación continua
              )
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .slideX(begin: 0.5, curve: Curves.easeOut),
            ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.caption,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              height: 300,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const Icon(Icons.error), // Manejo de errores
            ),
            const SizedBox(height: 20),
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Text(caption, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}