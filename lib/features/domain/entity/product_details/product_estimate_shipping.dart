// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product_details/available_country.dart';
import 'package:amamini_client/features/domain/entity/product_details/available_state.dart';
import 'package:equatable/equatable.dart';

class ProductEstimateShippingEntity extends Equatable {
  final int? productId;
  final int? requestDelay;
  final bool? enabled;
  final int? countryId;
  final int? stateProvinceId;
  final String? zipPostalCode;
  final bool? useCity;
  final String? city;
  final List<AvailableCountryEntity>? availableCountries;
  final List<AvailableStateEntity>? availableStates;
  final CustomPropertiesEntity? customProperties;

  const ProductEstimateShippingEntity({
    required this.productId,
    required this.requestDelay,
    required this.enabled,
    required this.countryId,
    required this.stateProvinceId,
    required this.zipPostalCode,
    required this.useCity,
    required this.city,
    required this.availableCountries,
    required this.availableStates,
    required this.customProperties,
  });

  ProductEstimateShippingEntity copyWith({
    int? productId,
    int? requestDelay,
    bool? enabled,
    int? countryId,
    int? stateProvinceId,
    String? zipPostalCode,
    bool? useCity,
    String? city,
    List<AvailableCountryEntity>? availableCountries,
    List<AvailableStateEntity>? availableStates,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductEstimateShippingEntity(
      productId: productId ?? this.productId,
      requestDelay: requestDelay ?? this.requestDelay,
      enabled: enabled ?? this.enabled,
      countryId: countryId ?? this.countryId,
      stateProvinceId: stateProvinceId ?? this.stateProvinceId,
      zipPostalCode: zipPostalCode ?? this.zipPostalCode,
      useCity: useCity ?? this.useCity,
      city: city ?? this.city,
      availableCountries: availableCountries ?? this.availableCountries,
      availableStates: availableStates ?? this.availableStates,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      productId,
      requestDelay,
      enabled,
      countryId,
      stateProvinceId,
      zipPostalCode,
      useCity,
      city,
      availableCountries,
      availableStates,
      customProperties,
    ];
  }
}
