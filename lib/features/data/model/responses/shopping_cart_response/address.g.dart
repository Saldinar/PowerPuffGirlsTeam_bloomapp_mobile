// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) =>
    AddressResponse(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      companyEnabled: json['company_enabled'] as bool?,
      companyRequired: json['company_required'] as bool?,
      company: json['company'] as String?,
      countryEnabled: json['country_enabled'] as bool?,
      countryId: (json['country_id'] as num?)?.toInt(),
      countryName: json['country_name'] as String?,
      stateProvinceEnabled: json['state_province_enabled'] as bool?,
      stateProvinceId: (json['state_province_id'] as num?)?.toInt(),
      stateProvinceName: json['state_province_name'] as String?,
      countyEnabled: json['county_enabled'] as bool?,
      countyRequired: json['county_required'] as bool?,
      county: json['county'] as String?,
      cityEnabled: json['city_enabled'] as bool?,
      cityRequired: json['city_required'] as bool?,
      city: json['city'] as String?,
      streetAddressEnabled: json['street_address_enabled'] as bool?,
      streetAddressRequired: json['street_address_required'] as bool?,
      address1: json['address1'] as String?,
      streetAddress2Enabled: json['street_address2_enabled'] as bool?,
      streetAddress2Required: json['street_address2_required'] as bool?,
      address2: json['address2'] as String?,
      zipPostalCodeEnabled: json['zip_postal_code_enabled'] as bool?,
      zipPostalCodeRequired: json['zip_postal_code_required'] as bool?,
      zipPostalCode: json['zip_postal_code'] as String?,
      phoneEnabled: json['phone_enabled'] as bool?,
      phoneRequired: json['phone_required'] as bool?,
      phoneNumber: json['phone_number'] as String?,
      faxEnabled: json['fax_enabled'] as bool?,
      faxRequired: json['fax_required'] as bool?,
      faxNumber: json['fax_number'] as String?,
      availableCountries: (json['available_countries'] as List<dynamic>?)
          ?.map((e) =>
              AvailableSortOptionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableStates: (json['available_states'] as List<dynamic>?)
          ?.map((e) =>
              AvailableSortOptionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      formattedCustomAddressAttributes:
          json['formatted_custom_address_attributes'] as String?,
      customAddressAttributes:
          (json['custom_address_attributes'] as List<dynamic>?)
              ?.map((e) => CustomAddressAttributeResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressResponseToJson(AddressResponse instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'company_enabled': instance.companyEnabled,
      'company_required': instance.companyRequired,
      'company': instance.company,
      'country_enabled': instance.countryEnabled,
      'country_id': instance.countryId,
      'country_name': instance.countryName,
      'state_province_enabled': instance.stateProvinceEnabled,
      'state_province_id': instance.stateProvinceId,
      'state_province_name': instance.stateProvinceName,
      'county_enabled': instance.countyEnabled,
      'county_required': instance.countyRequired,
      'county': instance.county,
      'city_enabled': instance.cityEnabled,
      'city_required': instance.cityRequired,
      'city': instance.city,
      'street_address_enabled': instance.streetAddressEnabled,
      'street_address_required': instance.streetAddressRequired,
      'address1': instance.address1,
      'street_address2_enabled': instance.streetAddress2Enabled,
      'street_address2_required': instance.streetAddress2Required,
      'address2': instance.address2,
      'zip_postal_code_enabled': instance.zipPostalCodeEnabled,
      'zip_postal_code_required': instance.zipPostalCodeRequired,
      'zip_postal_code': instance.zipPostalCode,
      'phone_enabled': instance.phoneEnabled,
      'phone_required': instance.phoneRequired,
      'phone_number': instance.phoneNumber,
      'fax_enabled': instance.faxEnabled,
      'fax_required': instance.faxRequired,
      'fax_number': instance.faxNumber,
      'available_countries': instance.availableCountries,
      'available_states': instance.availableStates,
      'formatted_custom_address_attributes':
          instance.formattedCustomAddressAttributes,
      'custom_address_attributes': instance.customAddressAttributes,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
