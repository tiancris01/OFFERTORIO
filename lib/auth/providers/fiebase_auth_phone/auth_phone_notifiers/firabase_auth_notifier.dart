import 'dart:ui' as ui;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/auth_providers.dart';
import 'package:offertorio/shared/domain/credentials_storage/repositories/credential_storage_repository.dart';

class FirebasePhoneAuthNotifier extends StateNotifier<AuthState> {
  FirebasePhoneAuthNotifier({
    required FirebaseAuth firebasePhoneAuth,
    required CredentialStorageRepository storageUse,
  })  : _firebasePhoneAuth = firebasePhoneAuth,
        // _storageUse = storageUse,
        super(const AuthState.initializing()) {
    _loadCountries();
  }

  // Firebase Auth instance
  final FirebaseAuth _firebasePhoneAuth;
  // final CredentialStorageRepository _storageUse;
  // Code and Country variables
  late CountryWithPhoneCode _selectedCountry;
  late Map _phoneNumber;
  late String _verificationId;
  late List<CountryWithPhoneCode> countries = [];

  Stream<User?> authStateChanges() => _firebasePhoneAuth.authStateChanges();

  User? getCurrentUserUid() => _firebasePhoneAuth.currentUser;

  CountryWithPhoneCode get selectedCountry => _selectedCountry;
  String get phoneCode => _selectedCountry.phoneCode;
  String get formattedPhoneNumber => _phoneNumber['international'];

  Future<void> _loadCountries() async {
    try {
      await init();
      final _sortedCountries = CountryManager().countries
        ..sort(
          (final a, final b) => (a.countryName ?? '').compareTo(
            b.countryName ?? '',
          ),
        );
      countries = _sortedCountries;
      final langCode = ui.window.locale.languageCode.toUpperCase();
      _firebasePhoneAuth.setLanguageCode(langCode);

      var filteredCountries =
          countries.where((item) => item.countryCode == langCode);

      if (filteredCountries.isEmpty) {
        filteredCountries = countries.where((item) => item.countryCode == 'CO');
      }
      if (filteredCountries.isEmpty) {
        throw Exception('Unable to find a default country!');
      }
      setCountry(filteredCountries.first);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  void setCountry(CountryWithPhoneCode selectedCountry) {
    _selectedCountry = selectedCountry;
    state = AuthState.ready(_selectedCountry);
  }

  Future<void> parsePhoneNumber(String inputText) async {
    _phoneNumber = await parse(
      "+${_selectedCountry.phoneCode}${inputText.replaceAll(RegExp(r'[^0-9]'), '')}",
      region: _selectedCountry.countryCode,
    );
    if (_phoneNumber['type'] != 'mobile') {
      throw Exception('You must enter a mobile phone number.');
    }
  }

  Future<void> verifyPhone(Function() completion) async {
    await _firebasePhoneAuth.verifyPhoneNumber(
      phoneNumber: _phoneNumber['e164'],
      verificationCompleted: (AuthCredential credential) async {
        await _firebasePhoneAuth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseException e) {
        if (e.code == 'invalid-phone-number') {}
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        completion();
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
        completion();
      },
      timeout: const Duration(seconds: 120),
    );
  }

  Future<void> verifyCode(String smsCode, Function() completion) async {
    final AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: smsCode,
    );
    final userCredentials =
        await _firebasePhoneAuth.signInWithCredential(credential);
    if (userCredentials.user != null) {
      completion();
    }
  }

  Future<void> signOut() async {
    await _firebasePhoneAuth.signOut();
  }
}
