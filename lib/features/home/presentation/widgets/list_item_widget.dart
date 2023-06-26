import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_tech/core/ui/constants/assets.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/core/ui/constants/styles.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    super.key,
    required this.nombreApellido,
    required this.avatar,
    required this.correo,
  });

  final String nombreApellido;
  final String avatar;
  final String correo;
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        avatar,
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombreApellido,
                      softWrap: true,
                      style: kTextStyleBlack,
                    ),
                    InkWell(
                      onTap: () {
                        //No pude implementar el hiperlink al hacer click en el email
                      },
                      child: Text(
                        correo,
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
