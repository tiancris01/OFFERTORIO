import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:offertorio/app_core/utils/widgets/buttons/general_buttom.dart';
import 'package:offertorio/app_core/utils/widgets/custom_space.dart';
import 'package:offertorio/app_core/utils/widgets/error/error_text.dart';
import 'package:offertorio/auth/presentation/auth_screens.dart';
import 'package:offertorio/auth/providers/fiebase_auth_phone/global_providers/firabase_phone_auth.dart';
import 'package:offertorio/auth/providers/fiebase_auth_phone/sign_in_state/sign_in_state.dart';

class SignInPhoneScreen extends ConsumerWidget {
  static const String routeName = 'sign_in_phone';
  Future<void> _openVerification(BuildContext context) async {
    await context.pushNamed(SignInVerificationScreen.routeName);
  }

  const SignInPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SignInState>(
      signInNotifierProvider,
      (_, state) {
        if (state == const SignInState.success()) {
          _openVerification(context);
        }
      },
    );

    final state = ref.watch(signInNotifierProvider);
    final selectedCountry = ref.watch(selectedCountryProvider);
    final notifier = ref.read(signInNotifierProvider.notifier);

    return SignInPhoneScreenBuilder(
      phoneCode: '+${selectedCountry.phoneCode}',
      phonePlaceholder: selectedCountry.exampleNumberMobileNational,
      formatter: notifier.phoneNumberFormatter,
      onSubmit: notifier.verifyPhone,
      canSubmit: state.maybeWhen(
        canSubmit: () => true,
        success: () => true,
        orElse: () => false,
      ),
      isLoading: state.maybeWhen(
        loading: () => true,
        orElse: () => false,
      ),
      errorText: state.maybeWhen(
        error: (error) => error,
        orElse: () => null,
      ),
    );
  }
}

class SignInPhoneScreenBuilder extends StatefulWidget {
  const SignInPhoneScreenBuilder({
    Key? key,
    required this.formatter,
    required this.phoneCode,
    required this.phonePlaceholder,
    required this.canSubmit,
    required this.isLoading,
    required this.errorText,
    required this.onSubmit,
  }) : super(key: key);

  final LibPhonenumberTextFormatter formatter;
  final String phoneCode;
  final String phonePlaceholder;
  final bool canSubmit;
  final bool isLoading;
  final String? errorText;
  final VoidCallback onSubmit;

  @override
  State<SignInPhoneScreenBuilder> createState() =>
      _SignInPhoneScreenBuilderState();
}

class _SignInPhoneScreenBuilderState extends State<SignInPhoneScreenBuilder> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      focusNode.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(children: [
            // const SizedBox(height: 20),
            Text(
              "We need to verify your number ",
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            CustomSpace.vertical(height: 30),
            Text(
              'Enviaremos un mensaje  SMS para verificar tu numerode telefono. Ingresa tu pais y el numero de telefono',
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            CustomSpace.vertical(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: OutlinedButton(
                    child: Text(
                      widget.phoneCode,
                    ),
                    onPressed: () {
                      context.pushNamed(CountrySelectionScreen.routeName);
                    },
                  ),
                ),
                CustomSpace.horizontal(width: 18),
                Flexible(
                  child: TextFormField(
                    focusNode: focusNode,
                    keyboardType: TextInputType.phone,
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: widget.phonePlaceholder,
                    ),
                    inputFormatters: [widget.formatter],
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: GeneralButton(
                title: "Continue",
                onPressed: widget.canSubmit ? widget.onSubmit : null,
              ),
            ),
            if (widget.errorText != null)
              ErrorText(
                message: widget.errorText!,
              ),
            const SizedBox(height: 30),
          ]),
        ),
      )),
    );
  }
}
