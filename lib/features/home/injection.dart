import 'package:flutter_tech/features/home/data/datasource/client_list_remote_datasource.dart';
import 'package:flutter_tech/features/home/data/repositories/client_list_repository_impl.dart';
import 'package:flutter_tech/features/home/domain/repositories/client_list_repository.dart';
import 'package:flutter_tech/features/home/domain/usecases/get_client_list.dart';
import 'package:flutter_tech/features/home/presentation/bloc/home_page_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> init() async {
  final GetIt sl = GetIt.instance;

  sl.registerLazySingleton<ClientListRemoteDataSource>(
    () => ClientListRemoteDataSourceImpl(
      remoteClient: sl(),
    ),
  );

  sl.registerLazySingleton<ClientListRepository>(
    () => ClientListRepositoryImpl(
      clientListRemoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<GetClientList>(
    () => GetClientList(
      clientListRepository: sl(),
    ),
  );

  sl.registerFactory<HomePageBloc>(
    () => HomePageBloc(
      getClientList: sl(),
    ),
  );
}
