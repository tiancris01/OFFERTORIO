import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/auth_providers.dart';
import 'package:offertorio/shared/providers/credential_storage/global_providers/credential_storage_goblal_providers.dart';
import 'package:reactive_forms/reactive_forms.dart';

final authFirebaseProvider = Provider<FirebasePhoneAuthNotifier>(
  (ref) => FirebasePhoneAuthNotifier(
    storageUse: ref.watch(credentialStorageProvider),
    firebasePhoneAuth: FirebaseAuth.instance,
  ),
);

final authFirebaseNotifierProvider =
    StateNotifierProvider<FirebasePhoneAuthNotifier, AuthState>((ref) {
  final authStateNotifier = ref.watch(authFirebaseProvider);
  return authStateNotifier;
});

final authUserStateChangesProvider = StreamProvider<User?>(
    (ref) => ref.watch(authFirebaseProvider).authStateChanges());

final signInNotifierProvider =
    StateNotifierProvider.autoDispose<SingInNotifier, SignInState>((ref) {
  final _signInStateNotifier = ref.watch(authFirebaseProvider);
  return SingInNotifier(
    firebasePhoneAuthNotifier: _signInStateNotifier,
  );
});

final selectedCountryProvider =
    Provider.autoDispose<CountryWithPhoneCode>((ref) {
  final countryState = ref.watch(authFirebaseNotifierProvider);
  return countryState.maybeWhen(
      ready: (selectedCountry) => selectedCountry,
      orElse: () {
        throw Exception('No selected country');
      });
});

final signInVerificationNotifierProvider =
    StateNotifierProvider.autoDispose<SignInVerificationNotifier, SignInState>(
        (ref) {
  final authNotifier = ref.watch(authFirebaseProvider);
  return SignInVerificationNotifier(
    authNotifier: authNotifier,
  );
});

final countdownProvider = StreamProvider.autoDispose<int>((ref) {
  final signInVerificationModel =
      ref.watch(signInVerificationNotifierProvider.notifier);
  return signInVerificationModel.countdown.stream;
});

final formPhoneProvider = Provider<FormGroup>((ref) {
  final form = ref.watch(formPhoneStateProvider);
  return form;
});
