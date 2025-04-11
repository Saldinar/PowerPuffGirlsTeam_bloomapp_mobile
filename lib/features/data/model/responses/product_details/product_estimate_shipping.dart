// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_details/available_country.dart';
import 'package:amamini_client/features/data/model/responses/product_details/available_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_estimate_shipping.g.dart';

@JsonSerializable()
class ProductEstimateShippingResponse {
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'request_delay')
  final int? requestDelay;
  final bool? enabled;
  @JsonKey(name: 'country_id')
  final int? countryId;
  @JsonKey(name: 'state_province_id')
  final int? stateProvinceId;
  @JsonKey(name: 'zip_postal_code')
  final String? zipPostalCode;
  @JsonKey(name: 'use_city')
  final bool? useCity;
  final String? city;
  @JsonKey(name: 'available_countries')
  final List<AvailableCountryResponse>? availableCountries;
  @JsonKey(name: 'available_states')
  final List<AvailableStateResponse>? availableStates;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductEstimateShippingResponse({
    this.productId,
    this.requestDelay,
    this.enabled,
    this.countryId,
    this.stateProvinceId,
    this.zipPostalCode,
    this.useCity,
    this.city,
    this.availableCountries,
    this.availableStates,
    this.customProperties,
  });

  factory ProductEstimateShippingResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductEstimateShippingResponseFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$ProductEstimateShippingResponseToJson(this);
}
