import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/providers.dart';

final authNotifierProvider = Provider<FirebasePhoneAuthNotifier>(
  (ref) => FirebasePhoneAuthNotifier(
    firebasePhoneAuth: FirebaseAuth.instance,
  ),
);

final authStateProvider =
    StateNotifierProvider<FirebasePhoneAuthNotifier, AuthState>((ref) {
  final authNotifier = ref.watch(authNotifierProvider);
  return authNotifier;
});

final authStateChangesProvider = StreamProvider<User?>(
    (ref) => ref.watch(authNotifierProvider).authStateChanges());

final signInNotifierProvider =
    StateNotifierProvider.autoDispose<SingInNotifier, SignInState>((ref) {
  final signInNotifier = ref.watch(authNotifierProvider);
  return SingInNotifier(
    firebasePhoneAuthNotifier: signInNotifier,
  );
});

final selectedCountryProvider =
    Provider.autoDispose<CountryWithPhoneCode>((ref) {
  final countryState = ref.watch(authStateProvider);
  return countryState.maybeWhen(
      ready: (selectedCountry) => selectedCountry,
      orElse: () {
        throw Exception('No selected country');
      });
});

final signInVerificationNotifierProvider =
    StateNotifierProvider.autoDispose<SignInVerificationNotifier, SignInState>(
        (ref) {
  final authNotifier = ref.watch(authNotifierProvider);
  return SignInVerificationNotifier(
    authNotifier: authNotifier,
  );
});

final countdownProvider = StreamProvider.autoDispose<int>((ref) {
  final signInVerificationModel =
      ref.watch(signInVerificationNotifierProvider.notifier);
  return signInVerificationModel.countdown.stream;
});
