import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/app_core/utils/widgets/reactive_textfield/custom_form_validators.dart';
import 'package:offertorio/auth/providers/providers.dart';
import 'package:reactive_forms/reactive_forms.dart';

final formPhoneStateProvider = StateProvider<FormGroup>((ref) {
  final firebasePhoneAuthNotifier = ref.watch(authFirebaseProvider);
  final form = FormGroup({
    'phone': FormControl<String>(
      validators: [
        Validators.required,
        // Validators.number,
        Validators.minLength(11),
        Validators.maxLength(11),
      ],
      asyncValidators: [
        ValidatedNumber(
          firebasePhoneAuthNotifier: firebasePhoneAuthNotifier,
        ), // custom asynchronous validator :)
      ],
    ),
  });
  return form;
});
