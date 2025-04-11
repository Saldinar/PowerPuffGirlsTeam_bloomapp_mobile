// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ManufacturerFilterEntity extends Equatable {
  final bool enabled;
  final List<ManufacturerInfoEntity> manufacturers;
  final CustomPropertiesEntity customProperties;

  const ManufacturerFilterEntity({
    required this.enabled,
    required this.manufacturers,
    required this.customProperties,
  });

  ManufacturerFilterEntity copyWith({
    bool? enabled,
    List<ManufacturerInfoEntity>? manufacturers,
    CustomPropertiesEntity? customProperties,
  }) {
    return ManufacturerFilterEntity(
      enabled: enabled ?? this.enabled,
      manufacturers: manufacturers ?? this.manufacturers,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [enabled, manufacturers, customProperties];
}
