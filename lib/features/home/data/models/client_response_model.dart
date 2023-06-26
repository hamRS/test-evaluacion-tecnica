import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/data/models/support_model.dart';
import 'package:flutter_tech/features/home/domain/entities/clients_response_entity.dart';

abstract class ClientListModel extends ClientListEntity {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final SupportModel support;
  final List<ClientModel> data;

  ClientListModel(
      {required this.page,
      required this.perPage,
      required this.total,
      required this.totalPages,
      required this.data,
      required this.support})
      : super(
          data: data,
          page: page,
          perPage: perPage,
          total: total,
          totalPages: totalPages,
          support: support,
        );
}
