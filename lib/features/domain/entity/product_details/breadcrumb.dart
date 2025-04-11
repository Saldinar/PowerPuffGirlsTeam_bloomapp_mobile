// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product_details/category_breadcrumb.dart';
import 'package:equatable/equatable.dart';

class BreadcrumbEntity extends Equatable {
  final bool? enabled;
  final int? productId;
  final String? productName;
  final String? productSeName;
  final List<CategoryBreadcrumbEntity>? categoryBreadcrumb;
  final CustomPropertiesEntity? customProperties;

  const BreadcrumbEntity({
    required this.enabled,
    required this.productId,
    required this.productName,
    required this.productSeName,
    required this.categoryBreadcrumb,
    required this.customProperties,
  });

  BreadcrumbEntity copyWith({
    bool? enabled,
    int? productId,
    String? productName,
    String? productSeName,
    List<CategoryBreadcrumbEntity>? categoryBreadcrumb,
    CustomPropertiesEntity? customProperties,
  }) {
    return BreadcrumbEntity(
      enabled: enabled ?? this.enabled,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productSeName: productSeName ?? this.productSeName,
      categoryBreadcrumb: categoryBreadcrumb ?? this.categoryBreadcrumb,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      enabled,
      productId,
      productName,
      productSeName,
      categoryBreadcrumb,
      customProperties,
    ];
  }
}
