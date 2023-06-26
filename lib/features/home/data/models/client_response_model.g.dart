// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientListModel _$ClientListModelFromJson(Map<String, dynamic> json) =>
    ClientListModel(
      page: json['page'] as int,
      perPage: json['perPage'] as int,
      total: json['total'] as int,
      totalPages: json['totalPages'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => ClientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      support: SupportModel.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientListModelToJson(ClientListModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'support': instance.support,
      'data': instance.data,
    };
