import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

final profileFormStateProvider = StateProvider<FormGroup>((ref) {
  final form = FormGroup({
    'name': FormControl<String>(
      validators: [
        Validators.required,
        Validators.maxLength(18),
      ],
    ),
  });
  return form;
});
