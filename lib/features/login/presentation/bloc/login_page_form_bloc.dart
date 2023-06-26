import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tech/features/login/presentation/validation/password_input.dart';
import 'package:flutter_tech/features/login/presentation/validation/username_intput.dart';
import 'package:formz/formz.dart';

part 'login_page_form_event.dart';
part 'login_page_form_state.dart';

class LoginPageFormBloc extends Bloc<LoginPageFormEvent, LoginPageFormState> {
  LoginPageFormBloc() : super(const LoginPageFormState()) {
    on<LoginPagePasswordChanged>(_onLoginPagePasswordChanged);
    on<LoginPageUsernameChanged>(_onLoginPageUsernameChanged);
  }

  Future<void> _onLoginPagePasswordChanged(
      LoginPagePasswordChanged event, Emitter<LoginPageFormState> emit) async {
    PasswordInput passwordInput =
        PasswordInput.dirty(value: event.passwordInput);
    emit(
      state.copyWith(passwordInput: passwordInput),
    );
  }

  Future<void> _onLoginPageUsernameChanged(
      LoginPageUsernameChanged event, Emitter<LoginPageFormState> emit) async {
    UsernameInput usernameInput =
        UsernameInput.dirty(value: event.usernameInput);
    emit(
      state.copyWith(usernameInput: usernameInput),
    );
  }
}
