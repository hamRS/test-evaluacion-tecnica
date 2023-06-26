import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech/core/client/remote_client.dart';
import 'package:flutter_tech/features/home/presentation/bloc/home_page_bloc.dart';
import 'package:flutter_tech/features/home/presentation/view/home_view.dart';
import 'package:flutter_tech/injection_container.dart';

class HomePage extends StatelessWidget {
  static const route = "/home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl.get<HomePageBloc>()
        ..add(
          HomePageClientInitialized(),
        ),
      child: const HomeView(),
    );
  }
}
