import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPhoneScreen extends ConsumerWidget {
  static const String routeName = 'sign_in_phone';

  const SignInPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text('Sign In Phone Screen'),
    );
  }
}
