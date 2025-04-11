// ignore_for_file: sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'custom_properties.g.dart';

@JsonSerializable()
class CustomPropertiesResponse {
  CustomPropertiesResponse({
    required this.additionalProp1,
    required this.additionalProp2,
    required this.additionalProp3,
  });

  String? additionalProp1;
  String? additionalProp2;
  String? additionalProp3;

  factory CustomPropertiesResponse.fromJson(Map<String, dynamic> json) => _$CustomPropertiesResponseFromJson(json);
}
