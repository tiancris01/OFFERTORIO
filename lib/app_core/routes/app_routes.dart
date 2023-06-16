import 'package:go_router/go_router.dart';

import 'package:offertorio/auth/presentation/screens.dart';
import 'package:offertorio/post/presentation/home/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: SplashScree.routeName,
      builder: (context, state) => const SplashScree(),
    ),
    GoRoute(
      path: '/landing',
      name: SignInLandingScreen.routeName,
      builder: (context, state) => const SignInLandingScreen(),
    ),
    GoRoute(
      path: '/home',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/sign_in_phone',
      name: SignInPhoneScreen.routeName,
      builder: (context, state) => const SignInPhoneScreen(),
    ),
  ],
);
