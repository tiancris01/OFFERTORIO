// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:offertorio/app_core/utils/widgets/reactive_textfield/custom_form_validators.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CustomRXTextFields extends StatelessWidget {
  final bool? readOnly;
  final String labelTxt;
  final bool? obscureText;
  final FocusNode? focusNode;
  final String formControlName;
  final TextInputType? keyboardType;
  final Map<String, String Function(dynamic error)>? validationMessages;
  final InputDecoration? decoration;
  final CustomFormsValidations customFormsValidations =
      const CustomFormsValidations();

  final String hintTxt;
  const CustomRXTextFields({
    Key? key,
    this.readOnly,
    this.focusNode,
    this.decoration,
    this.obscureText,
    this.keyboardType,
    required this.hintTxt,
    required this.labelTxt,
    this.validationMessages,
    required this.formControlName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      readOnly: readOnly ?? false,
      focusNode: focusNode ?? FocusNode(),
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      formControlName: formControlName,
      validationMessages:
          validationMessages ?? customFormsValidations.validationMessages(),
      decoration: decoration ??
          InputDecoration(
            labelText: labelTxt,
            hintText: hintTxt,
            border: const OutlineInputBorder(),
          ),
    );
  }
}
