part of 'login_page_form_bloc.dart';

class LoginPageFormState extends Equatable with FormzMixin {
  const LoginPageFormState({
    this.passwordInput = const PasswordInput.pure(),
    this.usernameInput = const UsernameInput.pure(),
  });
  final PasswordInput passwordInput;
  final UsernameInput usernameInput;

  @override
  List<Object> get props => [
        passwordInput,
        usernameInput,
      ];

  LoginPageFormState copyWith({
    PasswordInput? passwordInput,
    UsernameInput? usernameInput,
  }) {
    return LoginPageFormState(
      passwordInput: passwordInput ?? this.passwordInput,
      usernameInput: usernameInput ?? this.usernameInput,
    );
  }

  @override
  List<FormzInput> get inputs => [passwordInput, usernameInput];
}
