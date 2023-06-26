import 'package:flutter_tech/features/home/domain/entities/client_entity.dart';
import 'package:flutter_tech/features/home/domain/entities/support_entity.dart';

abstract class ClientListEntity {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final SupportEntity support;
  final List<ClientEntity> data;

  ClientListEntity(
      {required this.page,
      required this.perPage,
      required this.total,
      required this.totalPages,
      required this.data,
      required this.support});
}
