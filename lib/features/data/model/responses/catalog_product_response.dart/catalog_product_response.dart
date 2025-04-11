// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/manufacturer/catalog_products_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_product_response.g.dart';

@JsonSerializable()
class CatalogProductResponse {
  @JsonKey(name: 'template_view_path')
  final String templateViewPath;
  @JsonKey(name: 'catalog_products_model')
  final CatalogProductsModelResponse catalogProductsModel;
  CatalogProductResponse({
    required this.templateViewPath,
    required this.catalogProductsModel,
  });
  factory CatalogProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductResponseFromJson(json);
}
