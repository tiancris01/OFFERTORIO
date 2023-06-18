import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/providers.dart';

const delayBeforeUserCanRequestNewCode = 60;

class SignInVerificationNotifier extends StateNotifier<SignInState> {
  SignInVerificationNotifier({
    required FirebasePhoneAuthNotifier authNotifier,
  })  : _authNotifier = authNotifier,
        super(const SignInState.notValid()) {
    _startTimer();
  }

  final FirebasePhoneAuthNotifier _authNotifier;
  String get formattedPhoneNumber => _authNotifier.formattedPhoneNumber;

  late Timer _timer;
  StreamController<int> countdown = StreamController<int>();
  late int _countdown;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _countdown = delayBeforeUserCanRequestNewCode;
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_countdown == 0) {
          timer.cancel();
        } else {
          _countdown--;
          countdown.add(_countdown);
        }
      },
    );
  }

  void resendCode() {
    state = const SignInState.loading();
    try {
      _authNotifier.verifyPhone(() {
        state = const SignInState.canSubmit();
        _startTimer();
      });
    } catch (e) {
      state = SignInState.error(e.toString());
    }
  }

  Future<void> verifyCode(String smsCode) async {
    state = const SignInState.loading();
    try {
      await _authNotifier.verifyCode(smsCode, () {
        state = const SignInState.success();
      });
    } catch (e) {
      if (e.toString() == "invalid-verification-code") {
        state = const SignInState.error("Invalid verification code!");
      } else {
        state = SignInState.error(e.toString());
      }
    }
  }
}
