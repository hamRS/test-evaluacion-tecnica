import 'package:flutter_tech/core/client/remote_client.dart';
import 'package:flutter_tech/features/home/data/models/client_response_model.dart';

abstract class ClientListRemoteDataSource {
  Future<ClientListModel> getClientList();
}

class ClientListRemoteDataSourceImpl implements ClientListRemoteDataSource {
  ClientListRemoteDataSourceImpl({
    required this.remoteClient,
  });

  final RemoteClient remoteClient;

  @override
  Future<ClientListModel> getClientList() async {
    const String path = "https://reqres.in/api/users";
    final response = await remoteClient.get(path);
    return ClientListModel.fromJson(response);
  }
}
