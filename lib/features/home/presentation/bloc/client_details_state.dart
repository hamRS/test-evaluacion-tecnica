part of 'client_details_bloc.dart';

abstract class ClientDetailsState extends Equatable {
  const ClientDetailsState();

  @override
  List<Object> get props => [];
}

class ClientDetailsInitial extends ClientDetailsState {}

class ClientDetailsActive extends ClientDetailsState {
  final Color color = kAccentColor;
  final String message = "Cuenta Activa";
  final ClientModel clientModel;

  const ClientDetailsActive({required this.clientModel});

  @override
  List<Object> get props => [
        color,
        message,
        clientModel,
      ];
}

class ClientDetailsInactive extends ClientDetailsState {
  final Color color = kInactiveColor;
  final String message = "Cuenta Inactiva";
  final ClientModel clientModel;

  const ClientDetailsInactive({required this.clientModel});
  @override
  List<Object> get props => [
        color,
        message,
        clientModel,
      ];
}

class ClientDetailsBlocked extends ClientDetailsState {
  final Color color = kBlockedColor;
  final String message = "Cuenta Blockeada!";
  final ClientModel clientModel;

  const ClientDetailsBlocked({
    required this.clientModel,
  });

  @override
  List<Object> get props => [
        color,
        message,
        clientModel,
      ];
}
