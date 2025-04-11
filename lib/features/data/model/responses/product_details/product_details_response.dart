// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product_details/product_details_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_details_response.g.dart';

@JsonSerializable()
class ProductDetailsResponse {
  @JsonKey(name: 'product_template_view_path')
  final String? productTemplateViewPath;
  @JsonKey(name: 'product_details_model')
  final ProductDetailsModelResponse productDetailsModel;

  const ProductDetailsResponse({
    required this.productDetailsModel,
    this.productTemplateViewPath,
  });

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailsResponseToJson(this);
}
