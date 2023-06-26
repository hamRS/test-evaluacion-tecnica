import 'package:dartz/dartz.dart';
import 'package:flutter_tech/core/errors/failures.dart';
import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/data/models/client_response_model.dart';

abstract class ClientListRepository {
  Future<Either<Failure, List<ClientModel>>> getClientList();
}
