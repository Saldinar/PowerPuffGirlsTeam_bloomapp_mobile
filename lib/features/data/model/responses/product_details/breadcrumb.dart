// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_details/category_breadcrumb.dart';
import 'package:json_annotation/json_annotation.dart';

part 'breadcrumb.g.dart';

@JsonSerializable()
class BreadcrumbResponse {
  final bool? enabled;
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'product_name')
  final String? productName;
  @JsonKey(name: 'product_se_name')
  final String? productSeName;
  @JsonKey(name: 'category_breadcrumb')
  final List<CategoryBreadcrumbResponse>? categoryBreadcrumb;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const BreadcrumbResponse({
    this.enabled,
    this.productId,
    this.productName,
    this.productSeName,
    this.categoryBreadcrumb,
    this.customProperties,
  });

  factory BreadcrumbResponse.fromJson(Map<String, dynamic> json) {
    return _$BreadcrumbResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BreadcrumbResponseToJson(this);
}
