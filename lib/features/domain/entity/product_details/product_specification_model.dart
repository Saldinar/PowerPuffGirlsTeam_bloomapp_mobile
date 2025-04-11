// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/group.dart';
import 'package:equatable/equatable.dart';

class ProductSpecificationModelEntity extends Equatable {
  final List<GroupEntity>? groups;
  final CustomPropertiesEntity? customProperties;

  const ProductSpecificationModelEntity({
    required this.groups,
    required this.customProperties,
  });

  ProductSpecificationModelEntity copyWith({
    List<GroupEntity>? groups,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductSpecificationModelEntity(
      groups: groups ?? this.groups,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [groups, customProperties];
}
