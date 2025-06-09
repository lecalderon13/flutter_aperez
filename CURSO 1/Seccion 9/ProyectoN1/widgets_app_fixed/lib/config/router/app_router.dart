import 'package:go_router/go_router.dart';
import 'package:widgets_app_fixed/config/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardScreen.name,
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      name: Snackbarscreen.name,
      builder: (context, state) => const Snackbarscreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: Uicontrolsscreen.name,
      builder: (context, state) => const Uicontrolsscreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name:AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),

    GoRoute(
      path: '/infinite',
      name:infiniteScrollScreen.name,
      builder: (context, state) => const infiniteScrollScreen(),
    ),


  ],
);
