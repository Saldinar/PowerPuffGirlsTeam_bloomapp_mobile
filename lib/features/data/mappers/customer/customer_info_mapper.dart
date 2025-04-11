import 'package:amamini_client/features/data/mappers/available_dto_mapper/available_dto_mapper.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/customer/associated_external_auth_records_mapper.dart';
import 'package:amamini_client/features/data/mappers/customer/customer_attributes_mapper.dart';
import 'package:amamini_client/features/data/mappers/customer/gdpr_contest_mapper.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/customer_info_response.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';

extension CustomerInfoMapper on CustomerInfoResponse {
  CustomerInfoEntity toEntity() {
    return CustomerInfoEntity(
      email: email,
      emailToRevalidate: emailToRevalidate,
      checkUsernameAvailabilityEnabled:
          checkUsernameAvailabilityEnabled ?? false,
      allowUsersToChangeUsernames: allowUsersToChangeUsernames ?? false,
      usernamesEnabled: usernamesEnabled ?? false,
      username: username,
      genderEnabled: genderEnabled ?? false,
      gender: gender,
      firstNameEnabled: firstNameEnabled ?? false,
      firstName: firstName,
      firstNameRequired: firstNameRequired ?? false,
      lastNameEnabled: lastNameEnabled ?? false,
      lastName: lastName,
      lastNameRequired: lastNameRequired ?? false,
      dateOfBirthEnabled: dateOfBirthEnabled ?? false,
      dateOfBirthDay: dateOfBirthDay,
      dateOfBirthMonth: dateOfBirthMonth,
      dateOfBirthYear: dateOfBirthYear,
      dateOfBirthRequired: dateOfBirthRequired ?? false,
      companyEnabled: companyEnabled ?? false,
      companyRequired: companyRequired ?? false,
      company: company,
      streetAddressEnabled: streetAddressEnabled ?? false,
      streetAddressRequired: streetAddressRequired ?? false,
      streetAddress: streetAddress,
      streetAddress2Enabled: streetAddress2Enabled ?? false,
      streetAddress2Required: streetAddress2Required ?? false,
      streetAddress2: streetAddress2,
      zipPostalCodeEnabled: zipPostalCodeEnabled ?? false,
      zipPostalCodeRequired: zipPostalCodeRequired ?? false,
      zipPostalCode: zipPostalCode,
      cityEnabled: cityEnabled ?? false,
      cityRequired: cityRequired ?? false,
      city: city,
      countryEnabled: countyEnabled ?? false,
      countryRequired: countyRequired ?? false,
      county: county,
      countyEnabled: countryEnabled ?? false,
      countyRequired: countryRequired ?? false,
      countryId: countryId,
      availableCountries:
          availableCountries!.map((item) => item.toEntity()).toList(),
      stateProvinceEnabled: stateProvinceEnabled ?? false,
      stateProvinceRequired: stateProvinceRequired ?? false,
      stateProvinceId: stateProvinceId,
      availableStates:
          availableStates?.map((available) => available.toEntity()).toList(),
      phoneEnabled: phoneEnabled ?? false,
      phoneRequired: phoneRequired ?? false,
      phone: phone,
      faxEnabled: faxEnabled ?? false,
      faxRequired: faxRequired ?? false,
      fax: fax,
      newsletterEnabled: newsletterEnabled ?? false,
      newsletter: newsletter ?? false,
      signatureEnabled: signatureEnabled ?? false,
      signature: signature,
      timeZoneId: timeZoneId,
      allowCustomersToSetTimeZone: allowCustomersToSetTimeZone ?? false,
      availableTimeZones:
          availableTimeZones?.map((available) => available.toEntity()).toList(),
      vatNumber: vatNumber,
      vatNumberStatusNote: vatNumberStatusNote,
      displayVatNumber: displayVatNumber ?? false,
      associatedExternalAuthRecords: associatedExternalAuthRecords
          ?.map((item) => item.toEntity())
          .toList(),
      numberOfExternalAuthenticationProviders:
          numberOfExternalAuthenticationProviders,
      allowCustomersToRemoveAssociations:
          allowCustomersToRemoveAssociations ?? false,
      customerAttributes:
          customerAttributes?.map((item) => item.toEntity()).toList(),
      gdprConsents: gdprConsents?.map((item) => item.toEntity()).toList(),
      customProperties: customProperties?.toEntity(),
    );
  }
}
