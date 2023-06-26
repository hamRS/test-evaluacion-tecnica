import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech/features/login/presentation/bloc/login_page_form_bloc.dart';
import 'package:flutter_tech/features/login/presentation/view/login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginPageFormBloc(),
      child: BlocListener<LoginPageFormBloc, LoginPageFormState>(
        listener: (context, state) {
          if (state.isValid) {
            print("State is valid!");
          } else {
            print("State is not valid!");
          }
        },
        child: LoginView(),
      ),
    );
  }
}
