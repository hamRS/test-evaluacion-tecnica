import 'package:flutter/material.dart';
import 'package:flutter_tech/core/routes/app_router.dart';
import 'package:flutter_tech/features/login/presentation/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: AppRouter.routes,
      initialRoute: "/",
    );
  }
}
