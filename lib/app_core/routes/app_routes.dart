import 'package:go_router/go_router.dart';
import 'package:offertorio/auth/presentation/auth_screens.dart';
import 'package:offertorio/post/presentation/post_screens.dart';
import 'package:offertorio/profile/presentation/onboarding/onboarding_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
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
      path: '/profile_on_boarding',
      name: ProfileOnBoardingScreen.routeName,
      builder: (context, state) => const ProfileOnBoardingScreen(),
    ),
    GoRoute(
      path: '/sign_in_phone',
      name: SignInPhoneScreen.routeName,
      builder: (context, state) => const SignInPhoneScreen(),
      routes: [
        GoRoute(
          path: 'country_selection_screen',
          name: CountrySelectionScreen.routeName,
          builder: (context, state) => const CountrySelectionScreen(),
        ),
        GoRoute(
          path: 'sign_in_verification_screen',
          name: SignInVerificationScreen.routeName,
          builder: (context, state) => const SignInVerificationScreen(),
        ),
      ],
    ),
  ],
);
