import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tech/core/usecases/use_case.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/domain/usecases/get_client_list.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final GetClientList getClientList;
  HomePageBloc({
    required this.getClientList,
  }) : super(HomePageInitial()) {
    on<HomePageClientInitialized>(_onHomePageClientInitialized);
  }

  Future<void> _onHomePageClientInitialized(
      HomePageClientInitialized event, Emitter<HomePageState> emit) async {
    emit(HomePageLoadInProgress());
    final response = await getClientList(NoParams());
    response.fold(
      (failure) => emit(
        const HomePageLoadError(
          message: "No se pudieron cargar los users!",
        ),
      ),
      (clientList) => emit(
        HomePageLoadSuccess(
          clientList: clientList,
        ),
      ),
    );
  }
}
