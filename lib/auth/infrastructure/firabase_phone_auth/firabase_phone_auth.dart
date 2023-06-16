import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/auth_notifiers/firabase_auth_notifier.dart';
import 'package:offertorio/auth/providers/auth_state/auth_state.dart';

final authServiceProvider = Provider<FirebasePhoneAuthService>(
  (ref) => FirebasePhoneAuthService(
    firebasePhoneAuth: FirebaseAuth.instance,
  ),
);

final authStateProvider =
    StateNotifierProvider<FirebasePhoneAuthService, AuthState>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService;
});

final authStateChangesProvider = StreamProvider<User?>(
    (ref) => ref.watch(authServiceProvider).authStateChanges());
