import 'package:flutter/material.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/presentation/page/client_details_page.dart';
import 'package:flutter_tech/features/home/presentation/page/home_page.dart';
import 'package:flutter_tech/features/login/presentation/page/login_page.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    LoginPage.route: (context) => const LoginPage(),
    HomePage.route: (context) => const HomePage(),
    ClientDetailsPage.route: (context) {
      final args = ModalRoute.of(context)!.settings.arguments as ClientModel;
      return ClientDetailsPage(clientModel: args);
    },
  };
}
