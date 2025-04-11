// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/picture_model/default_picture_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_breadcrumb.g.dart';

@JsonSerializable()
class CategoryBreadcrumbResponse {
  final String? name;
  @JsonKey(name: 'se_name')
  final String? seName;
  @JsonKey(name: 'number_of_products')
  final int? numberOfProducts;
  @JsonKey(name: 'include_in_top_menu')
  final bool? includeInTopMenu;
  @JsonKey(name: 'sub_categories')
  final List<String>? subCategories;
  @JsonKey(name: 'have_sub_categories')
  final bool? haveSubCategories;
  final String? route;
  @JsonKey(name: 'picture_model')
  final DefaultPictureModelResponse? pictureModel;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const CategoryBreadcrumbResponse({
    this.name,
    this.seName,
    this.numberOfProducts,
    this.includeInTopMenu,
    this.subCategories,
    this.haveSubCategories,
    this.route,
    this.pictureModel,
    this.id,
    this.customProperties,
  });

  factory CategoryBreadcrumbResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoryBreadcrumbResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryBreadcrumbResponseToJson(this);
}
