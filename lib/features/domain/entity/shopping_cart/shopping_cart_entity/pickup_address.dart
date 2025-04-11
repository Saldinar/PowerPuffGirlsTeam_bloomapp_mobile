import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/search_products_entity/available_entity.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/custom_address_attribute.dart';
import 'package:equatable/equatable.dart';

class PickupAddressEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? email;
  final bool? companyEnabled;
  final bool? companyRequired;
  final String? company;
  final bool? countryEnabled;
  final int? countryId;
  final String? countryName;
  final bool? stateProvinceEnabled;
  final int? stateProvinceId;
  final String? stateProvinceName;
  final bool? countyEnabled;
  final bool? countyRequired;
  final String? county;
  final bool? cityEnabled;
  final bool? cityRequired;
  final String? city;
  final bool? streetAddressEnabled;
  final bool? streetAddressRequired;
  final String? address1;
  final bool? streetAddress2Enabled;
  final bool? streetAddress2Required;
  final String? address2;
  final bool? zipPostalCodeEnabled;
  final bool? zipPostalCodeRequired;
  final String? zipPostalCode;
  final bool? phoneEnabled;
  final bool? phoneRequired;
  final String? phoneNumber;
  final bool? faxEnabled;
  final bool? faxRequired;
  final String? faxNumber;
  final List<AvailableEntity>? availableCountries;
  final List<AvailableEntity>? availableStates;
  final String? formattedCustomAddressAttributes;
  final List<CustomAddressAttributeEntity>? customAddressAttributes;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const PickupAddressEntity({
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

  PickupAddressEntity copyWith({
    String? firstName,
    String? lastName,
    String? email,
    bool? companyEnabled,
    bool? companyRequired,
    String? company,
    bool? countryEnabled,
    int? countryId,
    String? countryName,
    bool? stateProvinceEnabled,
    int? stateProvinceId,
    String? stateProvinceName,
    bool? countyEnabled,
    bool? countyRequired,
    String? county,
    bool? cityEnabled,
    bool? cityRequired,
    String? city,
    bool? streetAddressEnabled,
    bool? streetAddressRequired,
    String? address1,
    bool? streetAddress2Enabled,
    bool? streetAddress2Required,
    String? address2,
    bool? zipPostalCodeEnabled,
    bool? zipPostalCodeRequired,
    String? zipPostalCode,
    bool? phoneEnabled,
    bool? phoneRequired,
    String? phoneNumber,
    bool? faxEnabled,
    bool? faxRequired,
    String? faxNumber,
    List<AvailableEntity>? availableCountries,
    List<AvailableEntity>? availableStates,
    String? formattedCustomAddressAttributes,
    List<CustomAddressAttributeEntity>? customAddressAttributes,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return PickupAddressEntity(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      companyEnabled: companyEnabled ?? this.companyEnabled,
      companyRequired: companyRequired ?? this.companyRequired,
      company: company ?? this.company,
      countryEnabled: countryEnabled ?? this.countryEnabled,
      countryId: countryId ?? this.countryId,
      countryName: countryName ?? this.countryName,
      stateProvinceEnabled: stateProvinceEnabled ?? this.stateProvinceEnabled,
      stateProvinceId: stateProvinceId ?? this.stateProvinceId,
      stateProvinceName: stateProvinceName ?? this.stateProvinceName,
      countyEnabled: countyEnabled ?? this.countyEnabled,
      countyRequired: countyRequired ?? this.countyRequired,
      county: county ?? this.county,
      cityEnabled: cityEnabled ?? this.cityEnabled,
      cityRequired: cityRequired ?? this.cityRequired,
      city: city ?? this.city,
      streetAddressEnabled: streetAddressEnabled ?? this.streetAddressEnabled,
      streetAddressRequired:
          streetAddressRequired ?? this.streetAddressRequired,
      address1: address1 ?? this.address1,
      streetAddress2Enabled:
          streetAddress2Enabled ?? this.streetAddress2Enabled,
      streetAddress2Required:
          streetAddress2Required ?? this.streetAddress2Required,
      address2: address2 ?? this.address2,
      zipPostalCodeEnabled: zipPostalCodeEnabled ?? this.zipPostalCodeEnabled,
      zipPostalCodeRequired:
          zipPostalCodeRequired ?? this.zipPostalCodeRequired,
      zipPostalCode: zipPostalCode ?? this.zipPostalCode,
      phoneEnabled: phoneEnabled ?? this.phoneEnabled,
      phoneRequired: phoneRequired ?? this.phoneRequired,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      faxEnabled: faxEnabled ?? this.faxEnabled,
      faxRequired: faxRequired ?? this.faxRequired,
      faxNumber: faxNumber ?? this.faxNumber,
      availableCountries: availableCountries ?? this.availableCountries,
      availableStates: availableStates ?? this.availableStates,
      formattedCustomAddressAttributes: formattedCustomAddressAttributes ??
          this.formattedCustomAddressAttributes,
      customAddressAttributes:
          customAddressAttributes ?? this.customAddressAttributes,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      firstName,
      lastName,
      email,
      companyEnabled,
      companyRequired,
      company,
      countryEnabled,
      countryId,
      countryName,
      stateProvinceEnabled,
      stateProvinceId,
      stateProvinceName,
      countyEnabled,
      countyRequired,
      county,
      cityEnabled,
      cityRequired,
      city,
      streetAddressEnabled,
      streetAddressRequired,
      address1,
      streetAddress2Enabled,
      streetAddress2Required,
      address2,
      zipPostalCodeEnabled,
      zipPostalCodeRequired,
      zipPostalCode,
      phoneEnabled,
      phoneRequired,
      phoneNumber,
      faxEnabled,
      faxRequired,
      faxNumber,
      availableCountries,
      availableStates,
      formattedCustomAddressAttributes,
      customAddressAttributes,
      id,
      customProperties,
    ];
  }
}
