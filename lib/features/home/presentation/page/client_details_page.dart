import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/presentation/bloc/client_details_bloc.dart';
import 'package:flutter_tech/features/home/presentation/view/client_details_view.dart';

class ClientDetailsPage extends StatelessWidget {
  static const route = "/home_details";
  const ClientDetailsPage({
    super.key,
    required this.clientModel,
  });
  final ClientModel clientModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ClientDetailsBloc()
        ..add(ClientDetailsStatusTrigger(clientModel: clientModel)),
      child: const ClientDetailsView(),
    );
  }
}
