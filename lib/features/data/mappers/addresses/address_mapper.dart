import 'package:amamini_client/features/data/mappers/available_dto_mapper/available_dto_mapper.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/values_mapper/values_mapper.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/address.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/custom_address_attribute.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/custom_address_attribute.dart';

extension AddressToRequestMapper on AddressEntity {
  AddressResponse toRequest() {
    return AddressResponse(
      firstName: firstName,
      lastName: lastName,
      email: email,
      companyEnabled: companyEnabled ?? true,
      companyRequired: companyRequired ?? false,
      company: company,
      countryEnabled: countryEnabled ?? true,
      countryId: countryId,
      countryName: countryName,
      stateProvinceEnabled: stateProvinceEnabled ?? true,
      stateProvinceId: stateProvinceId,
      stateProvinceName: stateProvinceName,
      countyEnabled: countyEnabled ?? false,
      countyRequired: countyRequired ?? false,
      county: county,
      cityEnabled: cityEnabled ?? false,
      cityRequired: cityRequired ?? true,
      city: city,
      streetAddressEnabled: streetAddressEnabled ?? true,
      streetAddressRequired: streetAddressRequired ?? true,
      address1: address1,
      streetAddress2Enabled: streetAddress2Enabled ?? true,
      streetAddress2Required: streetAddress2Required ?? true,
      address2: address2,
      zipPostalCodeEnabled: zipPostalCodeEnabled ?? true,
      zipPostalCodeRequired: zipPostalCodeRequired ?? true,
      zipPostalCode: zipPostalCode,
      phoneEnabled: phoneEnabled ?? true,
      phoneRequired: phoneRequired ?? true,
      phoneNumber: phoneNumber,
      faxEnabled: faxEnabled ?? true,
      faxRequired: faxRequired ?? false,
      faxNumber: faxNumber,
      availableCountries: availableCountries
          ?.map((available) => available.toRequest())
          .toList(),
      availableStates:
          availableStates?.map((available) => available.toRequest()).toList(),
      formattedCustomAddressAttributes: formattedCustomAddressAttributes,
      customAddressAttributes: customAddressAttributes
          ?.map((addressAttributes) => addressAttributes.toRequest())
          .toList(),
      id: id ?? 0,
      customProperties: customProperties?.toRequest(),
    );
  }
}

extension AddressMapper on AddressResponse {
  AddressEntity toEntity() {
    return AddressEntity(
      firstName: firstName,
      lastName: lastName,
      email: email,
      companyEnabled: companyEnabled ?? true,
      companyRequired: companyRequired ?? false,
      company: company,
      countryEnabled: countryEnabled ?? true,
      countryId: countryId,
      countryName: countryName,
      stateProvinceEnabled: stateProvinceEnabled ?? true,
      stateProvinceId: stateProvinceId,
      stateProvinceName: stateProvinceName,
      countyEnabled: countyEnabled ?? false,
      countyRequired: countyRequired ?? false,
      county: county,
      cityEnabled: cityEnabled ?? true,
      cityRequired: cityRequired ?? true,
      city: city,
      streetAddressEnabled: streetAddressEnabled ?? true,
      streetAddressRequired: streetAddressRequired ?? true,
      address1: address1,
      streetAddress2Enabled: streetAddress2Enabled ?? true,
      streetAddress2Required: streetAddress2Required ?? true,
      address2: address2,
      zipPostalCodeEnabled: zipPostalCodeEnabled ?? true,
      zipPostalCodeRequired: zipPostalCodeRequired ?? true,
      zipPostalCode: zipPostalCode,
      phoneEnabled: phoneEnabled ?? true,
      phoneRequired: phoneRequired ?? true,
      phoneNumber: phoneNumber,
      faxEnabled: faxEnabled ?? true,
      faxRequired: faxRequired ?? false,
      faxNumber: faxNumber,
      availableCountries:
          availableCountries?.map((available) => available.toEntity()).toList(),
      availableStates:
          availableStates?.map((available) => available.toEntity()).toList(),
      formattedCustomAddressAttributes: formattedCustomAddressAttributes,
      customAddressAttributes: customAddressAttributes
          ?.map((addressAttributes) => addressAttributes.toEntity())
          .toList(),
      id: id ?? 0,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AddressAttributesMapper on CustomAddressAttributeResponse {
  CustomAddressAttributeEntity toEntity() {
    return CustomAddressAttributeEntity(
      name: name,
      isRequired: isRequired,
      defaultValue: defaultValue,
      attributeControlType: attributeControlType,
      values: values?.map((value) => value.toEntity()).toList(),
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AddressAttributeRequestMapper on CustomAddressAttributeEntity {
  CustomAddressAttributeResponse toRequest() {
    return CustomAddressAttributeResponse(
      name: name,
      isRequired: isRequired,
      defaultValue: defaultValue,
      attributeControlType: attributeControlType,
      values: values?.map((value) => value.toRequest()).toList(),
      id: id,
      customProperties: customProperties?.toRequest(),
    );
  }
}
