import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/app_core/utils/widgets/reactive_textfield/custom_form_validators.dart';
import 'package:reactive_forms/reactive_forms.dart';

final formStateProvider = StateProvider<FormGroup>(
  (ref) => fb.group({
    'phone': [
      Validators.required,
      Validators.number,
      Validators.minLength(10),
      Validators.maxLength(10),
    ],
    'name': [
      Validators.required,
      // Custom validator
      const NameValidator(),
    ]
  }),
);
