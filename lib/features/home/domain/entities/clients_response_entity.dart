import 'package:flutter_tech/features/home/domain/entities/client_entity.dart';
import 'package:flutter_tech/features/home/domain/entities/support_entity.dart';

abstract class ClientListEntity {
  int page;
  int perPage;
  int total;
  int totalPages;
  SupportEntity support;
  List<ClientEntity> data;

  ClientListEntity(
      {required this.page,
      required this.perPage,
      required this.total,
      required this.totalPages,
      required this.data,
      required this.support});
}
