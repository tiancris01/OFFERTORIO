import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/providers.dart';

class SingInNotifier extends StateNotifier<SignInState> {
  SingInNotifier({required FirebasePhoneAuthNotifier firebasePhoneAuthNotifier})
      : _firebasePhoneAuthNotifier = firebasePhoneAuthNotifier,
        super(const SignInState.notValid());

  final FirebasePhoneAuthNotifier _firebasePhoneAuthNotifier;

  LibPhonenumberTextFormatter get phoneNumberFormatter {
    return LibPhonenumberTextFormatter(
      country: _firebasePhoneAuthNotifier.selectedCountry,
      onFormatFinished: (inputText) async => _parsePhoneNumber(inputText),
    );
  }

  Future<void> _parsePhoneNumber(String inputText) async {
    try {
      await _firebasePhoneAuthNotifier.parsePhoneNumber(inputText);
      state = const SignInState.canSubmit();
    } catch (e) {
      if (!e.toString().contains('parse')) {
        state = SignInState.error(e.toString());
      } else {
        state = const SignInState.notValid();
      }
    }
  }

  Future<void> verifyPhone() async {
    state = const SignInState.loading();
    try {
      _firebasePhoneAuthNotifier.verifyPhone(() {
        state = const SignInState.success();
      });
    } catch (e) {
      state = SignInState.error(e.toString());
    }
  }
}
