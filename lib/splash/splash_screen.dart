import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/auth_phone/global_providers/firabase_phone_auth.dart';
import 'package:offertorio/auth/providers/global_providers/firabase_phone_auth.dart';
import 'package:offertorio/auth/presentation/screens.dart';
import 'package:offertorio/post/presentation/home/home_screen.dart';

class SplashScree extends ConsumerStatefulWidget {
  static const String routeName = 'splash';

  const SplashScree({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreeState();
}

class _SplashScreeState extends ConsumerState<SplashScree> {
  @override
  Widget build(BuildContext context) {
    final firebasePhoneAuthStateChanges = ref.watch(authStateChangesProvider);
    return firebasePhoneAuthStateChanges.when(
      data: (user) {
        if (user != null) {
          return const HomeScreen();
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
