import 'package:flutter_tech/features/home/domain/entities/client_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_model.g.dart';

@JsonSerializable()
class ClientModel extends ClientEntity {
  ClientModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  }) : super(
          id: id,
          avatar: avatar,
          email: email,
          firstName: firstName,
          lastName: lastName,
        );

  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String avatar;

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClientModelToJson(this);
}
