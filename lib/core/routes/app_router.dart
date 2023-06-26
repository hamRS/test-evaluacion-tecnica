import 'package:flutter/material.dart';
import 'package:flutter_tech/features/login/presentation/page/login_page.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    "/": (context) => const LoginPage(),
  };
}
