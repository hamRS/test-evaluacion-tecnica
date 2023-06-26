import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_tech/core/ui/constants/assets.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/core/ui/constants/styles.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    LOGIN_ICON,
                    scale: 20,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nombre Apellido",
                      softWrap: true,
                      style: kTextStyleBlack,
                    ),
                    InkWell(
                      onTap: () {
                        //No pude implementar el hiperlink al hacer click en el email
                      },
                      child: const Text(
                        "someone@example.com",
                        style: kTextStyle,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 0.9,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
