import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:offertorio/app_core/utils/widgets/buttons/general_buttom.dart';
import 'package:offertorio/app_core/utils/widgets/miscellenius/custom_space.dart';
import 'package:offertorio/app_core/utils/widgets/reactive_textfield/custom_reactivetextfield.dart';
import 'package:offertorio/auth/presentation/auth_screens.dart';
import 'package:offertorio/auth/providers/providers.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
    );
  }
}

class SignInPhoneScreenBuilder extends ConsumerStatefulWidget {
  const SignInPhoneScreenBuilder({
    Key? key,
    required this.formatter,
    required this.phoneCode,
    required this.phonePlaceholder,
    required this.canSubmit,
    required this.isLoading,
    required this.onSubmit,
  }) : super(key: key);

  final LibPhonenumberTextFormatter formatter;
  final String phoneCode;
  final String phonePlaceholder;
  final bool canSubmit;
  final bool isLoading;
  final VoidCallback onSubmit;

  @override
  ConsumerState<SignInPhoneScreenBuilder> createState() =>
      _SignInPhoneScreenBuilderState();
}

class _SignInPhoneScreenBuilderState
    extends ConsumerState<SignInPhoneScreenBuilder> {
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
    final form = ref.watch(formPhoneProvider);
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: ReactiveForm(
            formGroup: form,
            child: Column(
              children: [
                // const SizedBox(height: 20),
                Text(
                  "We need to verify your number ",
                  style: theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                CustomSpace.vertical(30),
                Text(
                  'Enviaremos un mensaje  SMS para verificar tu numerode telefono. Ingresa tu pais y el numero de telefono',
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                CustomSpace.vertical(30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    CustomSpace.horizontal(18),
                    Flexible(
                      child: Column(
                        children: [
                          CustomRXTextFields(
                            formControlName: 'phone',
                            focusNode: focusNode,
                            keyboardType: TextInputType.phone,
                            hintTxt: widget.phonePlaceholder,
                            inputFormatters: [widget.formatter],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ReactiveFormConsumer(
                    builder: (context, form, child) {
                      return GeneralButton(
                        title: "Continue",
                        onPressed: form.valid && widget.canSubmit
                            ? widget.onSubmit
                            : null,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
