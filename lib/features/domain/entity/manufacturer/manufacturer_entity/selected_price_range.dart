// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class SelectedPriceRangeEntity extends Equatable {
  final int from;
  final int to;
  final CustomPropertiesEntity customProperties;

  const SelectedPriceRangeEntity({
    required this.from,
    required this.to,
    required this.customProperties,
  });

  SelectedPriceRangeEntity copyWith({
    int? from,
    int? to,
    CustomPropertiesEntity? customProperties,
  }) {
    return SelectedPriceRangeEntity(
      from: from ?? this.from,
      to: to ?? this.to,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [from, to, customProperties];
}
