import 'package:flutter_tech/core/client/remote_client.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import '/features/home/injection.dart' as home_init;

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerFactory<http.Client>(() => http.Client());

  //remote_client
  sl.registerLazySingleton<RemoteClient>(
    () => RemoteClient(
      client: sl(),
    ),
  );

  home_init.init();
}
