import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/presentation/auth_screens.dart';
import 'package:offertorio/auth/providers/auth_providers.dart';
import 'package:offertorio/post/presentation/post_screens.dart';
import 'package:offertorio/profile/presentation/providers/profile_notifier_provider.dart';
import 'package:offertorio/profile/presentation/screens/profile_onboarding_screen.dart';

class SplashScree extends ConsumerStatefulWidget {
  static const String routeName = 'splash';

  const SplashScree({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreeState();
}

class _SplashScreeState extends ConsumerState<SplashScree> {
  Future<bool> dataBaseUserExist(String uid) {
    final userExist =
        ref.read(profileNotifierProvider.notifier).dataBaseUserExist(uid);
    return userExist;
  }

  @override
  Widget build(BuildContext context) {
    final firebasePhoneAuthStateChanges =
        ref.watch(authUserStateChangesProvider);
    return firebasePhoneAuthStateChanges.when(
      data: (user) {
        if (user != null) {
          return FutureBuilder<bool>(
            future: dataBaseUserExist(user.uid),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!) {
                  return const HomeScreen();
                } else {
                  return const ProfileOnBoardingScreen();
                }
              } else {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          );
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
