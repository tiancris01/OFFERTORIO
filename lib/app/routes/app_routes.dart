import 'package:go_router/go_router.dart';

import 'package:offertorio/presentation/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/landing',
  routes: [
    GoRoute(
      path: '/',
      name: SplashScree.routeName,
      builder: (context, state) => const SplashScree(),
    ),
    GoRoute(
      path: '/landing',
      name: LandingScreen.routeName,
      builder: (context, state) => LandingScreen(
        onPressed: () {},
        seeTerms: () {},
      ),
    ),
  ],
);
