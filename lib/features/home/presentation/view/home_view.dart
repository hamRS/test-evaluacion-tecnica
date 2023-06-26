import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech/core/ui/constants/assets.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/core/ui/constants/styles.dart';
import 'package:flutter_tech/features/common/presentation/widgets/tech_app_bar.dart';
import 'package:flutter_tech/features/home/presentation/bloc/home_page_bloc.dart';
import 'package:flutter_tech/features/home/presentation/widgets/list_item_widget.dart';
import 'package:flutter_tech/features/login/presentation/page/login_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TechAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            print(state);
            if (state is HomePageLoadSuccess) {
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: state.clientList.length,
                itemBuilder: (context, index) {
                  return ListItemWidget(
                    avatar: state.clientList[index].avatar,
                    correo: state.clientList[index].email,
                    nombreApellido:
                        "${state.clientList[index].first_name} ${state.clientList[index].last_name}",
                  );
                },
              );
            } else if (state is HomePageLoadError) {
              return const Center(
                child: Text("Error al cargar los usuarios"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
