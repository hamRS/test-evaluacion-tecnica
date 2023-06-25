part of 'login_page_form_bloc.dart';

class LoginPageFormState extends Equatable {
  const LoginPageFormState({
    this.passwordInput = const PasswordInput.pure(),
    this.usernameInput = const UsernameInput.pure(),
    this.isValid = false,
  });
  final PasswordInput passwordInput;
  final UsernameInput usernameInput;
  final bool isValid;

  @override
  List<Object> get props => [
        passwordInput,
        usernameInput,
      ];

  LoginPageFormState copyWith({
    PasswordInput? passwordInput,
    UsernameInput? usernameInput,
    bool? isValid,
  }) {
    return LoginPageFormState(
      isValid: isValid ?? this.isValid,
      passwordInput: passwordInput ?? this.passwordInput,
      usernameInput: usernameInput ?? this.usernameInput,
    );
  }
}
