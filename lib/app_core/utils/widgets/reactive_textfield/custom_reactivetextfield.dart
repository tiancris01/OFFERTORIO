// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:offertorio/app_core/utils/widgets/reactive_textfield/custom_form_validators.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CustomRXTextFields extends StatelessWidget {
  final String? hintTxt;
  final bool? readOnly;
  final String? labelTxt;
  final bool? obscureText;
  final FocusNode? focusNode;
  final String formControlName;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Map<String, String Function(dynamic error)>? validationMessages;
  final InputDecoration? decoration;
  final CustomFormsValidations customFormsValidations =
      const CustomFormsValidations();

  const CustomRXTextFields({
    Key? key,
    this.hintTxt,
    this.readOnly,
    this.labelTxt,
    this.focusNode,
    this.decoration,
    this.obscureText,
    this.keyboardType,
    this.inputFormatters,
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
            constraints: const BoxConstraints(minHeight: 50),
            labelText: labelTxt,
            hintText: hintTxt,
          ),
      inputFormatters: inputFormatters,
    );
  }
}
