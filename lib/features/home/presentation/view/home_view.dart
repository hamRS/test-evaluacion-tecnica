import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_tech/core/ui/constants/assets.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/core/ui/constants/styles.dart';
import 'package:flutter_tech/features/common/presentation/widgets/tech_app_bar.dart';
import 'package:flutter_tech/features/home/presentation/widgets/list_item_widget.dart';
import 'package:flutter_tech/features/login/presentation/page/login_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TechAppBar(),
      body: Column(
        children: [
          ListItemWidget(),
        ],
      ),
    );
  }
}
