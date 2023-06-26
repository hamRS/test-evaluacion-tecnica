import 'package:flutter_tech/features/home/domain/entities/client_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_model.g.dart';

@JsonSerializable()
class ClientModel extends ClientEntity {
  ClientModel({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  }) : super(
          id: id,
          avatar: avatar,
          email: email,
          firstName: first_name,
          lastName: last_name,
        );

  final int id;
  final String first_name;
  final String last_name;
  final String email;
  final String avatar;

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClientModelToJson(this);
}
