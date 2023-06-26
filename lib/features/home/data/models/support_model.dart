import 'package:flutter_tech/features/home/domain/entities/support_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'support_model.g.dart';

@JsonSerializable()
class SupportModel extends SupportEntity {
  SupportModel({
    required this.url,
    required this.text,
  }) : super(
          url: url,
          text: text,
        );

  final String url;
  final String text;

  factory SupportModel.fromJson(Map<String, dynamic> json) =>
      _$SupportModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupportModelToJson(this);
}
