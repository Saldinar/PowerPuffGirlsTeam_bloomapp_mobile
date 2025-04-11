// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ProductTagEntity extends Equatable {
  final String? name;
  final String? seName;
  final int? productCount;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const ProductTagEntity({
    required this.name,
    required this.seName,
    required this.productCount,
    required this.id,
    required this.customProperties,
  });

  ProductTagEntity copyWith({
    String? name,
    String? seName,
    int? productCount,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductTagEntity(
      name: name ?? this.name,
      seName: seName ?? this.seName,
      productCount: productCount ?? this.productCount,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      seName,
      productCount,
      id,
      customProperties,
    ];
  }
}
