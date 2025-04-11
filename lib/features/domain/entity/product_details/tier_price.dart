// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class TierPriceEntity extends Equatable {
  final String? price;
  final int? priceValue;
  final int? quantity;
  final CustomPropertiesEntity? customProperties;

  const TierPriceEntity({
    required this.price,
    required this.priceValue,
    required this.quantity,
    required this.customProperties,
  });

  TierPriceEntity copyWith({
    String? price,
    int? priceValue,
    int? quantity,
    CustomPropertiesEntity? customProperties,
  }) {
    return TierPriceEntity(
      price: price ?? this.price,
      priceValue: priceValue ?? this.priceValue,
      quantity: quantity ?? this.quantity,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      price,
      priceValue,
      quantity,
      customProperties,
    ];
  }
}
