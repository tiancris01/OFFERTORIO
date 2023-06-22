import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:offertorio/app_core/utils/widgets/error/error_text.dart';
import 'package:offertorio/auth/providers/providers.dart';
import 'package:pinput/pinput.dart';

class SignInVerificationScreen extends ConsumerWidget {
  static const String routeName = 'sign_in_verification_screen';
  const SignInVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SignInState>(signInVerificationNotifierProvider, (_, state) {
      if (state == const SignInState.success()) {
        context.go('/');
      }
    });

    final state = ref.watch(signInVerificationNotifierProvider);
    final countdown = ref.watch(countdownProvider);
    final notifier = ref.read(signInVerificationNotifierProvider.notifier);

    return SignInVerificationScreenBuilder(
      phoneNumber: notifier.formattedPhoneNumber,
      resendCode: () => notifier.resendCode(),
      verifyCode: (String smsCode) => notifier.verifyCode(smsCode),
      delayBeforeNewCode: (countdown.value ?? delayBeforeUserCanRequestNewCode),
      canSubmit: state.maybeWhen(
        canSubmit: () => true,
        orElse: () => false,
      ),
      isLoading: state.maybeWhen(
        loading: () => true,
        orElse: () => false,
      ),
      errorText: state.maybeWhen(
        error: (error) => error,
        orElse: () => '',
      ),
    );
  }
}

class SignInVerificationScreenBuilder extends StatefulWidget {
  const SignInVerificationScreenBuilder({
    Key? key,
    required this.phoneNumber,
    required this.canSubmit,
    required this.isLoading,
    required this.delayBeforeNewCode,
    required this.errorText,
    required this.resendCode,
    required this.verifyCode,
  }) : super(key: key);

  final String phoneNumber;
  final bool canSubmit;
  final bool isLoading;
  final int delayBeforeNewCode;
  final String? errorText;
  final Function() resendCode;
  final Function(String smsCode) verifyCode;

  @override
  State<SignInVerificationScreenBuilder> createState() =>
      _SignInVerificationScreenBuilderState();
}

class _SignInVerificationScreenBuilderState
    extends State<SignInVerificationScreenBuilder> {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      focusNode.requestFocus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      textStyle: const TextStyle(fontSize: 40),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(5),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.blue),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Verification code",
        ),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(children: [
            const SizedBox(height: 20),
            Text(
              "Please enter the verfication code we sent to ${widget.phoneNumber}:",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.all(30.0),
              child: Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                length: 6,
                onTap: () {
                  if (widget.errorText != null) {
                    controller.text = "";
                  }
                },
                onCompleted: widget.verifyCode,
                focusNode: focusNode,
                controller: controller,
                pinAnimationType: PinAnimationType.none,
                pinputAutovalidateMode: PinputAutovalidateMode.disabled,
                validator: (s) {
                  if (widget.errorText == null && s!.length == 6) {
                    widget.verifyCode(s);
                  }
                  return null;
                },
              ),
            ),
            TextButton(
              onPressed:
                  widget.delayBeforeNewCode > 0 ? null : widget.resendCode,
              child: Text(
                widget.delayBeforeNewCode > 0
                    ? "If you did not receive the SMS, you will be able to request a new one in ${widget.delayBeforeNewCode.toString()} seconds"
                    : "Resend to ${widget.phoneNumber}",
                textAlign: TextAlign.center,
              ),
            ),
            if (widget.errorText != null) ErrorText(message: widget.errorText!),
          ]),
        ),
      ),
    );
  }
}
