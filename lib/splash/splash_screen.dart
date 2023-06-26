import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/presentation/auth_screens.dart';
import 'package:offertorio/auth/providers/providers.dart';
import 'package:offertorio/profile/presentation/onboarding/onboarding_screen.dart';

class SplashScree extends ConsumerStatefulWidget {
  static const String routeName = 'splash';

  const SplashScree({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreeState();
}

class _SplashScreeState extends ConsumerState<SplashScree> {
  @override
  Widget build(BuildContext context) {
    final firebasePhoneAuthStateChanges =
        ref.watch(authUserStateChangesProvider);
    return firebasePhoneAuthStateChanges.when(
      data: (user) {
        if (user != null) {
          return const ProfileOnBoardingScreen();
        } else {
          return const SignInLandingScreen();
        }
      },
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, _) => Center(child: Text(error.toString())),
    );
  }
}
