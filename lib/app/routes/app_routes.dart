import 'package:go_router/go_router.dart';

import 'package:offertorio/presentation/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: SplashScree.routeName,
      builder: (context, state) => const SplashScree(),
    ),
  ],
);
