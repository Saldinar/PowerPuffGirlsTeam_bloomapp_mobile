import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_details_response/available_country.dart';
import 'package:amamini_client/features/data/model/responses/product_details_response/available_state.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart_response/custom_address_attribute.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pickup_address.g.dart';

@JsonSerializable()
class PickupAddressResponse {
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? email;
  @JsonKey(name: 'company_enabled')
  final bool? companyEnabled;
  @JsonKey(name: 'company_required')
  final bool? companyRequired;
  final String? company;
  @JsonKey(name: 'country_enabled')
  final bool? countryEnabled;
  @JsonKey(name: 'country_id')
  final int? countryId;
  @JsonKey(name: 'country_name')
  final String? countryName;
  @JsonKey(name: 'state_province_enabled')
  final bool? stateProvinceEnabled;
  @JsonKey(name: 'state_province_id')
  final int? stateProvinceId;
  @JsonKey(name: 'state_province_name')
  final String? stateProvinceName;
  @JsonKey(name: 'county_enabled')
  final bool? countyEnabled;
  @JsonKey(name: 'county_required')
  final bool? countyRequired;
  final String? county;
  @JsonKey(name: 'city_enabled')
  final bool? cityEnabled;
  @JsonKey(name: 'city_required')
  final bool? cityRequired;
  final String? city;
  @JsonKey(name: 'street_address_enabled')
  final bool? streetAddressEnabled;
  @JsonKey(name: 'street_address_required')
  final bool? streetAddressRequired;
  final String? address1;
  @JsonKey(name: 'street_address2_enabled')
  final bool? streetAddress2Enabled;
  @JsonKey(name: 'street_address2_required')
  final bool? streetAddress2Required;
  final String? address2;
  @JsonKey(name: 'zip_postal_code_enabled')
  final bool? zipPostalCodeEnabled;
  @JsonKey(name: 'zip_postal_code_required')
  final bool? zipPostalCodeRequired;
  @JsonKey(name: 'zip_postal_code')
  final String? zipPostalCode;
  @JsonKey(name: 'phone_enabled')
  final bool? phoneEnabled;
  @JsonKey(name: 'phone_required')
  final bool? phoneRequired;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @JsonKey(name: 'fax_enabled')
  final bool? faxEnabled;
  @JsonKey(name: 'fax_required')
  final bool? faxRequired;
  @JsonKey(name: 'fax_number')
  final String? faxNumber;
  @JsonKey(name: 'available_countries')
  final List<AvailableCountryResponse>? availableCountries;
  @JsonKey(name: 'available_states')
  final List<AvailableStateResponse>? availableStates;
  @JsonKey(name: 'formatted_custom_address_attributes')
  final String? formattedCustomAddressAttributes;
  @JsonKey(name: 'custom_address_attributes')
  final List<CustomAddressAttributeResponse>? customAddressAttributes;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const PickupAddressResponse({
    this.firstName,
    this.lastName,
    this.email,
    this.companyEnabled,
    this.companyRequired,
    this.company,
    this.countryEnabled,
    this.countryId,
    this.countryName,
    this.stateProvinceEnabled,
    this.stateProvinceId,
    this.stateProvinceName,
    this.countyEnabled,
    this.countyRequired,
    this.county,
    this.cityEnabled,
    this.cityRequired,
    this.city,
    this.streetAddressEnabled,
    this.streetAddressRequired,
    this.address1,
    this.streetAddress2Enabled,
    this.streetAddress2Required,
    this.address2,
    this.zipPostalCodeEnabled,
    this.zipPostalCodeRequired,
    this.zipPostalCode,
    this.phoneEnabled,
    this.phoneRequired,
    this.phoneNumber,
    this.faxEnabled,
    this.faxRequired,
    this.faxNumber,
    this.availableCountries,
    this.availableStates,
    this.formattedCustomAddressAttributes,
    this.customAddressAttributes,
    this.id,
    this.customProperties,
  });

  factory PickupAddressResponse.fromJson(Map<String, dynamic> json) {
    return _$PickupAddressResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PickupAddressResponseToJson(this);
}
