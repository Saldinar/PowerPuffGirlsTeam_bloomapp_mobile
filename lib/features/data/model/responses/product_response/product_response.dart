// ignore_for_file: sort_constructors_first
import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/picture_model/default_picture_model.dart';
import 'package:amamini_client/features/data/model/responses/product_response/product_price.dart';
import 'package:amamini_client/features/data/model/responses/product_response/product_specification_model.dart';
import 'package:amamini_client/features/data/model/responses/product_response/review_overview_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  ProductResponse({
    required this.id,
    required this.markAsNew,
    required this.productPrice,
    required this.name,
    this.shortDescription,
    this.fullDescription,
    this.seName,
    this.sku,
    this.productType,
    this.defaultPictureModel,
    this.productSpecificationModel,
    this.reviewOverviewModel,
    this.customProperties,
  });

  final String name;
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @JsonKey(name: 'full_description')
  final String? fullDescription;
  @JsonKey(name: 'se_name')
  final String? seName;
  final String? sku;
  @JsonKey(name: 'product_type')
  final String? productType;
  @JsonKey(name: 'mark_as_new')
  final bool markAsNew;
  @JsonKey(name: 'product_price')
  final ProductPriceResponse productPrice;
  @JsonKey(name: 'picture_models')
  final List<DefaultPictureModelResponse>? defaultPictureModel;
  @JsonKey(name: 'product_specification_model')
  final ProductSpecificationModelResponse? productSpecificationModel;
  @JsonKey(name: 'review_overview_model')
  final ReviewOverviewModelResponse? reviewOverviewModel;
  final int id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
