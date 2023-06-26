part of 'client_details_bloc.dart';

abstract class ClientDetailsEvent extends Equatable {
  const ClientDetailsEvent();

  @override
  List<Object> get props => [];
}

class ClientDetailsStatusTrigger extends ClientDetailsEvent {
  final ClientModel clientModel;

  const ClientDetailsStatusTrigger({
    required this.clientModel,
  });
  @override
  List<Object> get props => [
        clientModel,
      ];
}
