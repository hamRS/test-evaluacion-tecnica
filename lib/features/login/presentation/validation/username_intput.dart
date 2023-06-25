import 'package:formz/formz.dart';

enum UsernameInputError {
  empty,
}

class UsernameInput extends FormzInput<String, UsernameInputError> {
  const UsernameInput.pure() : super.pure("");

  const UsernameInput.dirty({String value = ""}) : super.dirty(value);

  @override
  UsernameInputError? validator(String value) {
    if (value.isEmpty) {
      return UsernameInputError.empty;
    }
    return null;
  }
}

extension UsernameInputErrorMessage on UsernameInputError {
  String? get errorMessage {
    switch (this) {
      case UsernameInputError.empty:
        return "Username no puede ser vacio";
    }
  }
}
