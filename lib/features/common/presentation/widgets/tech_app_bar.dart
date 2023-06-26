import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_tech/core/ui/constants/assets.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/core/ui/constants/styles.dart';
import 'package:flutter_tech/features/login/presentation/page/login_page.dart';

class TechAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TechAppBar({
    super.key,
    this.hideActions = true,
  });
  final customHeight = 80;
  final bool hideActions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        "CLIENT LIST",
        style: kTitleStyleNormal,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(
            context,
            LoginPage.route,
          );
        },
        icon: Image.asset(
          LOGOUT_ICON,
          scale: 15,
        ),
      ),
      actions: [
        if (!hideActions) ...{
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
              size: 30,
            ),
          )
        }
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
