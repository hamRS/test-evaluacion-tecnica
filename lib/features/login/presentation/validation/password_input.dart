import 'package:formz/formz.dart';

enum PasswordInputError { empty, notValid, lessthan5 }

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure("");

  const PasswordInput.dirty({String value = ""}) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.isEmpty) {
      return PasswordInputError.empty;
    }
    if (int.tryParse(value) == null) {
      return PasswordInputError.notValid;
    }
    if (value.length < 5) {
      return PasswordInputError.lessthan5;
    }
    return null;
  }
}

extension UsernameInputErrorMessage on PasswordInputError {
  String? get errorMessage {
    switch (this) {
      case PasswordInputError.empty:
        return "Ingrese su contraseña";
      case PasswordInputError.notValid:
        return "Ingrese un numero";
      case PasswordInputError.lessthan5:
        return "La contraseña debe tener 5 digitos";
    }
  }
}
