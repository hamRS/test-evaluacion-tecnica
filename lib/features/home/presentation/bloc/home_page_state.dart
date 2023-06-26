part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();
}

class HomePageInitial extends HomePageState {
  @override
  List<Object?> get props => [];
}

class HomePageLoadInProgress extends HomePageState {
  @override
  List<Object> get props => [];
}

class HomePageLoadSuccess extends HomePageState {
  final List<ClientModel> clientList;

  const HomePageLoadSuccess({
    required this.clientList,
  });

  @override
  List<Object> get props => [
        clientList,
      ];
}

class HomePageLoadError extends HomePageState {
  final String message;

  const HomePageLoadError({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
