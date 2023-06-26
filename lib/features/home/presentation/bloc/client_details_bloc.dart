import 'package:bloc/bloc.dart';
import 'dart:math';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';

part 'client_details_event.dart';
part 'client_details_state.dart';

class ClientDetailsBloc extends Bloc<ClientDetailsEvent, ClientDetailsState> {
  ClientDetailsBloc() : super(ClientDetailsInitial()) {
    on<ClientDetailsStatusTrigger>(_onClientDetailsStatusTrigger);
  }

  Future<void> _onClientDetailsStatusTrigger(ClientDetailsStatusTrigger event,
      Emitter<ClientDetailsState> emit) async {
    Random random = new Random();
    int randomNumber = random.nextInt(100) + 1;
    if (randomNumber < 20) {
      emit(
        ClientDetailsActive(
          clientModel: event.clientModel,
        ),
      );
    } else if (randomNumber % 20 == 0) {
      emit(
        ClientDetailsInactive(clientModel: event.clientModel),
      );
    } else {
      emit(
        ClientDetailsBlocked(clientModel: event.clientModel),
      );
    }
  }
}
