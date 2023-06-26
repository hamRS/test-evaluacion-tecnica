import 'package:flutter_tech/features/home/data/models/client_model.dart';
import 'package:flutter_tech/features/home/data/models/support_model.dart';
import 'package:flutter_tech/features/home/domain/entities/clients_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_response_model.g.dart';

@JsonSerializable()
class ClientListModel extends ClientListEntity {
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

  factory ClientListModel.fromJson(Map<String, dynamic> json) =>
      _$ClientListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClientListModelToJson(this);
}
