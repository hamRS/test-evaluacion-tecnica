import 'package:flutter_tech/features/home/data/datasource/client_list_remote_datasource.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/data/models/client_response_model.dart';
import 'package:flutter_tech/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_tech/features/home/domain/repositories/client_list_repository.dart';

class ClientListRepositoryImpl implements ClientListRepository {
  final ClientListRemoteDataSource clientListRemoteDataSource;

  ClientListRepositoryImpl({
    required this.clientListRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<ClientModel>>> getClientList() async {
    try {
      final ClientListModel clientListModel =
          await clientListRemoteDataSource.getClientList();

      return right(clientListModel.data);
    } catch (e) {
      return left(
        ServerFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
