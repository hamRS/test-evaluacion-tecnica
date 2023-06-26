import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/features/common/presentation/widgets/tech_app_bar.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/presentation/bloc/client_details_bloc.dart';

class ClientDetailsView extends StatelessWidget {
  const ClientDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TechAppBar(
        hideActions: false,
      ),
      body: BlocBuilder<ClientDetailsBloc, ClientDetailsState>(
        builder: (context, state) {
          if (state is ClientDetailsActive) {
            return _DetailsBuilder(
                backgroundColor: state.color,
                clientModel: state.clientModel,
                message: state.message);
          } else if (state is ClientDetailsInactive) {
            return _DetailsBuilder(
                backgroundColor: state.color,
                clientModel: state.clientModel,
                message: state.message);
          } else if (state is ClientDetailsBlocked) {
            return _DetailsBuilder(
                backgroundColor: state.color,
                clientModel: state.clientModel,
                message: state.message);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class _DetailsBuilder extends StatelessWidget {
  const _DetailsBuilder({
    super.key,
    required this.backgroundColor,
    required this.clientModel,
    required this.message,
  });
  final Color backgroundColor;
  final ClientModel clientModel;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 40,
              fontWeight: FontWeight.w400,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              clientModel.avatar,
              scale: 1.2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${clientModel.first_name} ${clientModel.last_name}",
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
