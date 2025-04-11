// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/catalog_products_model.dart';
import 'package:amamini_client/features/data/model/responses/picture_model/default_picture_model.dart';
import 'package:amamini_client/features/data/model/responses/product/product_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manufacturer_response.g.dart';

@JsonSerializable()
class ManufacturerResponse {
  final String name;
  final String? description;
  @JsonKey(name: 'meta_keywords')
  final String? metaKeywords;
  @JsonKey(name: 'meta_description')
  final String? metaDescription;
  @JsonKey(name: 'meta_title')
  final String? metaTitle;
  @JsonKey(name: 'se_name')
  final String seName;
  @JsonKey(name: 'picture_model')
  final DefaultPictureModelResponse pictureModel;
  @JsonKey(name: 'featured_products')
  final List<ProductResponse> featuredProducts;
  @JsonKey(name: 'catalog_products_model')
  final CatalogProductsModelResponse catalogProductsModel;
  final int id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse customProperties;

  const ManufacturerResponse({
    required this.name,
    required this.seName,
    required this.pictureModel,
    required this.featuredProducts,
    required this.catalogProductsModel,
    required this.id,
    required this.customProperties,
    this.description,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
  });

  factory ManufacturerResponse.fromJson(Map<String, dynamic> json) {
    return _$ManufacturerResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManufacturerResponseToJson(this);
}
