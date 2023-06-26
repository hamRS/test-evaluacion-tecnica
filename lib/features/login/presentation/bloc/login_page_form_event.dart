part of 'login_page_form_bloc.dart';

abstract class LoginPageFormEvent extends Equatable {
  const LoginPageFormEvent();

  @override
  List<Object> get props => [];
}

class LoginPagePasswordChanged extends LoginPageFormEvent {
  const LoginPagePasswordChanged({required this.passwordInput});
  final String passwordInput;
}

class LoginPageUsernameChanged extends LoginPageFormEvent {
  const LoginPageUsernameChanged({
    required this.usernameInput,
  });
  final String usernameInput;
}
