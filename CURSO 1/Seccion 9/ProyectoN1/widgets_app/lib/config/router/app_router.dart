
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/config/presentation/screens/cards/card_screen.dart';
import 'package:widgets_app/config/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    
    GoRoute(
      path: '/',
      name:HomeScreen.name,
      builder: (context, state) => const HomeScreen(),

    ),
    GoRoute( 
      path: '/buttons',
      name:ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),

    ),
    GoRoute(
      path: '/cards',
      name:CardScreen.name,
      builder: (context, state) => const CardScreen(),

    ),
  ],   
);