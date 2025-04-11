import 'package:amamini_client/features/data/mappers/available_dto_mapper/available_dto_mapper.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/customer/associated_external_auth_records_mapper.dart';
import 'package:amamini_client/features/data/mappers/customer/customer_attributes_mapper.dart';
import 'package:amamini_client/features/data/mappers/customer/gdpr_contest_mapper.dart';
import 'package:amamini_client/features/data/model/requests/registration_model/registration_model_request.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/customer_info_response.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';

extension RegisterCustomerMapper on RegistrationModelEntity {
  RegistrationModelRequest toRequest() {
    return RegistrationModelRequest(
      model: model.toRequest(),
      form: form?.toRequest(),
    );
  }
}

extension ModelMapper on CustomerInfoEntity {
  CustomerInfoResponse toRequest() {
    return CustomerInfoResponse(
      email: email,
      password: password,
      emailToRevalidate: emailToRevalidate,
      checkUsernameAvailabilityEnabled: checkUsernameAvailabilityEnabled,
      allowUsersToChangeUsernames: allowUsersToChangeUsernames,
      usernamesEnabled: usernamesEnabled,
      username: username,
      genderEnabled: genderEnabled,
      gender: gender,
      firstNameEnabled: firstNameEnabled,
      firstName: firstName,
      firstNameRequired: firstNameRequired,
      lastNameEnabled: lastNameEnabled,
      lastName: lastName,
      lastNameRequired: lastNameRequired,
      dateOfBirthEnabled: dateOfBirthEnabled,
      dateOfBirthDay: dateOfBirthDay,
      dateOfBirthMonth: dateOfBirthMonth,
      dateOfBirthYear: dateOfBirthYear,
      dateOfBirthRequired: dateOfBirthRequired,
      companyEnabled: companyEnabled,
      companyRequired: companyRequired,
      company: company,
      streetAddressEnabled: streetAddressEnabled,
      streetAddressRequired: streetAddressRequired,
      streetAddress: streetAddress,
      streetAddress2Enabled: streetAddress2Enabled,
      streetAddress2Required: streetAddress2Required,
      streetAddress2: streetAddress2,
      zipPostalCodeEnabled: zipPostalCodeEnabled,
      zipPostalCodeRequired: zipPostalCodeRequired,
      zipPostalCode: zipPostalCode,
      cityEnabled: cityEnabled,
      cityRequired: cityRequired,
      city: city,
      countyEnabled: countyEnabled,
      countyRequired: countyRequired,
      county: county,
      countryEnabled: countryEnabled,
      countryRequired: countryRequired,
      countryId: countryId,
      availableCountries:
          availableCountries?.map((country) => country.toRequest()).toList(),
      stateProvinceEnabled: stateProvinceEnabled,
      stateProvinceRequired: stateProvinceRequired,
      stateProvinceId: stateProvinceId,
      availableStates:
          availableStates?.map((state) => state.toRequest()).toList(),
      phoneEnabled: phoneEnabled,
      phoneRequired: phoneRequired,
      phone: phone,
      faxEnabled: faxEnabled,
      faxRequired: faxRequired,
      fax: fax,
      newsletterEnabled: newsletterEnabled,
      newsletter: newsletter,
      signatureEnabled: signatureEnabled,
      signature: signature,
      timeZoneId: timeZoneId,
      allowCustomersToSetTimeZone: allowCustomersToSetTimeZone,
      availableTimeZones:
          availableTimeZones?.map((timeZone) => timeZone.toRequest()).toList(),
      vatNumber: vatNumber,
      vatNumberStatusNote: vatNumberStatusNote,
      displayVatNumber: displayVatNumber,
      associatedExternalAuthRecords: associatedExternalAuthRecords
          ?.map((authRecord) => authRecord.toRequest())
          .toList(),
      numberOfExternalAuthenticationProviders:
          numberOfExternalAuthenticationProviders,
      allowCustomersToRemoveAssociations: allowCustomersToRemoveAssociations,
      customerAttributes: customerAttributes
          ?.map((customerAttribute) => customerAttribute.toRequest())
          .toList(),
      gdprConsents:
          gdprConsents?.map((gdprConsent) => gdprConsent.toRequest()).toList(),
      customProperties: customProperties?.toRequest(),
    );
  }
}
