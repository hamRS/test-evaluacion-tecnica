import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech/core/ui/constants/assets.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/core/ui/constants/styles.dart';
import 'package:flutter_tech/features/common/presentation/widgets/button_widget.dart';
import 'package:flutter_tech/features/home/presentation/page/home_page.dart';
import 'package:flutter_tech/features/login/presentation/bloc/login_page_form_bloc.dart';
import 'package:flutter_tech/features/login/presentation/validation/password_input.dart';
import 'package:flutter_tech/features/login/presentation/validation/username_intput.dart';
import 'package:flutter_tech/features/login/presentation/widgets/login_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _LoginLogoSection(),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                LOGIN_ICON,
                scale: 15,
              ),
              const SizedBox(
                height: 10,
              ),
              const _LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPageFormBloc, LoginPageFormState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: LoginTextField(
                errorMessage: state.usernameInput.error != null
                    ? state.usernameInput.error?.errorMessage
                    : "",
                onChanged: (value) {
                  context.read<LoginPageFormBloc>().add(
                        LoginPageUsernameChanged(
                          usernameInput: value,
                        ),
                      );
                },
                hintText: 'Username',
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp("[a-zA-Z]"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: LoginTextField(
                errorMessage: state.passwordInput.error != null
                    ? state.passwordInput.error?.errorMessage
                    : "",
                obscureText: true,
                maxLength: 5,
                hintText: 'Password',
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(5),
                ],
                onChanged: (value) {
                  context.read<LoginPageFormBloc>().add(
                        LoginPagePasswordChanged(
                          passwordInput: value,
                        ),
                      );
                },
              ),
            ),
            ButtonWidget(
              title: 'Login',
              isEnabled: true,
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  HomePage.route,
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class _LoginLogoSection extends StatelessWidget {
  const _LoginLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
        color: kPrimaryColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 110,
            left: 80,
            child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
            ),
          ),
          const _LoginText(),
          Positioned(
            top: 90,
            right: 80,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: kYellowColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 80,
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 110,
            right: 80,
            child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginText extends StatelessWidget {
  const _LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: Center(
        child: Text(
          "HELLO",
          style: kTitleStyle,
        ),
      ),
    );
  }
}
