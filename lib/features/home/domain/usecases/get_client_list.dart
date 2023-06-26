import 'package:flutter_tech/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_tech/core/usecases/use_case.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/domain/repositories/client_list_repository.dart';

class GetClientList extends UseCase<List<ClientModel>, NoParams> {
  final ClientListRepository clientListRepository;

  GetClientList({
    required this.clientListRepository,
  });

  @override
  Future<Either<Failure, List<ClientModel>>> call(NoParams params) async {
    return clientListRepository.getClientList();
  }
}
