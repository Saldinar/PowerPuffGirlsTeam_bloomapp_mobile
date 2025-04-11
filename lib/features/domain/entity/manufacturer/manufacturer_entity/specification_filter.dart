// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/attribute.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class SpecificationFilterEntity extends Equatable {
  final bool enabled;
  final List<AttributeEntity> attributes;
  final CustomPropertiesEntity customProperties;

  const SpecificationFilterEntity({
    required this.enabled,
    required this.attributes,
    required this.customProperties,
  });

  SpecificationFilterEntity copyWith({
    bool? enabled,
    List<AttributeEntity>? attributes,
    CustomPropertiesEntity? customProperties,
  }) {
    return SpecificationFilterEntity(
      enabled: enabled ?? this.enabled,
      attributes: attributes ?? this.attributes,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [enabled, attributes, customProperties];
}
