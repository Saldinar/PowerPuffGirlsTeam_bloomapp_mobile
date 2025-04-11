// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ProductManufacturerEntity extends Equatable {
  final String? name;
  final String? seName;
  final bool? isActive;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const ProductManufacturerEntity({
    required this.name,
    required this.seName,
    required this.isActive,
    required this.id,
    required this.customProperties,
  });

  ProductManufacturerEntity copyWith({
    String? name,
    String? seName,
    bool? isActive,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductManufacturerEntity(
      name: name ?? this.name,
      seName: seName ?? this.seName,
      isActive: isActive ?? this.isActive,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      seName,
      isActive,
      id,
      customProperties,
    ];
  }
}
