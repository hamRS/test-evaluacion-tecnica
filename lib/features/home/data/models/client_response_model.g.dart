// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientListModel _$ClientListModelFromJson(Map<String, dynamic> json) =>
    ClientListModel(
      page: json['page'] as int,
      per_page: json['per_page'] as int,
      total: json['total'] as int,
      total_pages: json['total_pages'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => ClientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      support: SupportModel.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientListModelToJson(ClientListModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'total': instance.total,
      'total_pages': instance.total_pages,
      'support': instance.support,
      'data': instance.data,
    };
