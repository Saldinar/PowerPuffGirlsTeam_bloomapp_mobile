// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/available_price_range.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/selected_price_range.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class PriceRangeFilterEntity extends Equatable {
  final bool enabled;
  final SelectedPriceRangeEntity selectedPriceRange;
  final AvailablePriceRangeEntity availablePriceRange;
  final CustomPropertiesEntity customProperties;

  const PriceRangeFilterEntity({
    required this.enabled,
    required this.selectedPriceRange,
    required this.availablePriceRange,
    required this.customProperties,
  });

  PriceRangeFilterEntity copyWith({
    bool? enabled,
    SelectedPriceRangeEntity? selectedPriceRange,
    AvailablePriceRangeEntity? availablePriceRange,
    CustomPropertiesEntity? customProperties,
  }) {
    return PriceRangeFilterEntity(
      enabled: enabled ?? this.enabled,
      selectedPriceRange: selectedPriceRange ?? this.selectedPriceRange,
      availablePriceRange: availablePriceRange ?? this.availablePriceRange,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      enabled,
      selectedPriceRange,
      availablePriceRange,
      customProperties,
    ];
  }
}
