// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:offertorio/auth/providers/auth_providers.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// Validator that validates if control's value is a name (it cannot contain numbers or simbols) value.
class NameValidator extends Validator<dynamic> {
  /// The regex expression of a name string value.
  static final RegExp nameRegex = RegExp(r'^[A-Za-z ]+$');

  const NameValidator() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    return (control.value == null) ||
            !nameRegex.hasMatch(control.value.toString())
        ? <String, dynamic>{'name': true}
        : null;
  }
}

/// Validator that validates the user's email is unique, sending a request to
/// the Server.
class ValidatedNumber extends AsyncValidator<dynamic> {
  final FirebasePhoneAuthNotifier firebasePhoneAuthNotifier;
  ValidatedNumber({
    required this.firebasePhoneAuthNotifier,
  });

  @override
  Future<Map<String, dynamic>?> validate(
      AbstractControl<dynamic> control) async {
    final error = {'validNumber': false};
    try {
      await firebasePhoneAuthNotifier.parsePhoneNumber(
        control.value.toString(),
      );
      return null;
    } catch (e) {
      control.markAsTouched();
      return error;
    }
  }
}

class CustomFormsValidations {
  const CustomFormsValidations();

  Map<String, String Function(dynamic error)> validationMessages() {
    return {
      'name': nameMessage(),
      'required': requiredMessage(),
      'number': numberMessage(),
      'max': numberMax(),
      'min': numberMin(),
      'pattern': pattern(),
      'email': email(),
      'typeDocumentVerify': typeDocumentVerify(),
      'addressVerify': addressVerify(),
      'minLength': minLength(),
      'maxLength': maxLength(),
      'validNumber': validNumber(),
    };
  }

  String Function(dynamic error) validNumber() {
    return (error) => 'Debe ser un numero valido para este pais';
  }

  String Function(dynamic error) nameMessage() {
    return (error) => 'Debe ser un nombre valido, sin números ni símbolos';
  }

  String Function(dynamic error) requiredMessage() {
    return (error) => 'Requerido';
  }

  String Function(dynamic error) numberMessage() {
    return (error) => 'Debe ser un número';
  }

  String Function(dynamic error) numberMax() {
    return (error) => '$error';
  }

  String Function(dynamic error) numberMin() {
    return (error) => '$error';
  }

  String Function(dynamic error) maxLength() {
    return (error) =>
        'Maximo 10 numeros ${error['actualLength']}/${error['requiredLength']}';
  }

  String Function(dynamic error) minLength() {
    return (error) =>
        'Minimo 10 numeros ${error['actualLength'] - 1}/${error['requiredLength'] - 1}';
  }

  String Function(dynamic error) pattern() {
    return (error) {
      return '$error';
    };
  }

  String Function(dynamic error) email() {
    return (error) => 'Correo electrónico incorrecto';
  }

  String Function(dynamic error) typeDocumentVerify() {
    return (error) => 'Documento incorrecto';
  }

  String Function(dynamic error) addressVerify() {
    return (error) => 'Dirección incorrecta';
  }

  bool validateAddressRegex(String value) {
    RegExp regExp = RegExp(
      r'^[a-zA-Z0-9\s\.\,\-\_]{1,100}$',
    );
    return regExp.hasMatch(value);
  }
}
