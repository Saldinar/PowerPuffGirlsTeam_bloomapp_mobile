// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerInfoResponse _$CustomerInfoResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerInfoResponse(
      email: json['email'] as String?,
      checkUsernameAvailabilityEnabled:
          json['check_username_availability_enabled'] as bool?,
      usernamesEnabled: json['usernames_enabled'] as bool?,
      genderEnabled: json['gender_enabled'] as bool?,
      firstNameEnabled: json['first_name_enabled'] as bool?,
      firstNameRequired: json['first_name_required'] as bool?,
      lastNameEnabled: json['last_name_enabled'] as bool?,
      lastNameRequired: json['last_name_required'] as bool?,
      dateOfBirthEnabled: json['date_of_birth_enabled'] as bool?,
      dateOfBirthRequired: json['date_of_birth_required'] as bool?,
      companyEnabled: json['company_enabled'] as bool?,
      companyRequired: json['company_required'] as bool?,
      streetAddressEnabled: json['street_address_enabled'] as bool?,
      streetAddressRequired: json['street_address_required'] as bool?,
      streetAddress2Enabled: json['street_address2_enabled'] as bool?,
      streetAddress2Required: json['street_address2_required'] as bool?,
      zipPostalCodeEnabled: json['zip_postal_code_enabled'] as bool?,
      zipPostalCodeRequired: json['zip_postal_code_required'] as bool?,
      cityEnabled: json['city_enabled'] as bool?,
      cityRequired: json['city_required'] as bool?,
      countyEnabled: json['county_enabled'] as bool?,
      countyRequired: json['county_required'] as bool?,
      countryEnabled: json['country_enabled'] as bool?,
      countryRequired: json['country_required'] as bool?,
      stateProvinceEnabled: json['state_province_enabled'] as bool?,
      stateProvinceRequired: json['state_province_required'] as bool?,
      phoneEnabled: json['phone_enabled'] as bool?,
      phoneRequired: json['phone_required'] as bool?,
      faxEnabled: json['fax_enabled'] as bool?,
      faxRequired: json['fax_required'] as bool?,
      newsletterEnabled: json['newsletter_enabled'] as bool?,
      newsletter: json['newsletter'] as bool?,
      signatureEnabled: json['signature_enabled'] as bool?,
      allowCustomersToSetTimeZone:
          json['allow_customers_to_set_time_zone'] as bool?,
      displayVatNumber: json['display_vat_number'] as bool?,
      allowCustomersToRemoveAssociations:
          json['allow_customers_to_remove_associations'] as bool?,
      password: json['password'] as String?,
      allowUsersToChangeUsernames:
          json['allow_users_to_change_usernames'] as bool?,
      emailToRevalidate: json['email_to_revalidate'] as String?,
      username: json['username'] as String?,
      gender: json['gender'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      dateOfBirthDay: (json['date_of_birth_day'] as num?)?.toInt(),
      dateOfBirthMonth: (json['date_of_birth_month'] as num?)?.toInt(),
      dateOfBirthYear: (json['date_of_birth_year'] as num?)?.toInt(),
      company: json['company'] as String?,
      streetAddress: json['street_address'] as String?,
      streetAddress2: json['street_address2'] as String?,
      zipPostalCode: json['zip_postal_code'] as String?,
      city: json['city'] as String?,
      county: json['county'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      availableCountries: (json['available_countries'] as List<dynamic>?)
          ?.map((e) => AvailableResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      stateProvinceId: (json['state_province_id'] as num?)?.toInt(),
      availableStates: (json['available_states'] as List<dynamic>?)
          ?.map((e) => AvailableResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      phone: json['phone'] as String?,
      fax: json['fax'] as String?,
      signature: json['signature'] as String?,
      timeZoneId: json['time_zone_id'] as String?,
      availableTimeZones: (json['available_time_zones'] as List<dynamic>?)
          ?.map((e) => AvailableResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      vatNumber: json['vat_number'] as String?,
      vatNumberStatusNote: json['vat_number_status_note'] as String?,
      associatedExternalAuthRecords:
          (json['associated_external_auth_records'] as List<dynamic>?)
              ?.map((e) => AssociatedExternalAuthRecordResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      numberOfExternalAuthenticationProviders:
          (json['number_of_external_authentication_providers'] as num?)
              ?.toInt(),
      customerAttributes: (json['customer_attributes'] as List<dynamic>?)
          ?.map((e) =>
              CustomerAttributeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      gdprConsents: (json['gdpr_consents'] as List<dynamic>?)
          ?.map((e) => GdprConsentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerInfoResponseToJson(
        CustomerInfoResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'email_to_revalidate': instance.emailToRevalidate,
      'check_username_availability_enabled':
          instance.checkUsernameAvailabilityEnabled,
      'allow_users_to_change_usernames': instance.allowUsersToChangeUsernames,
      'usernames_enabled': instance.usernamesEnabled,
      'username': instance.username,
      'gender_enabled': instance.genderEnabled,
      'gender': instance.gender,
      'first_name_enabled': instance.firstNameEnabled,
      'first_name': instance.firstName,
      'first_name_required': instance.firstNameRequired,
      'last_name_enabled': instance.lastNameEnabled,
      'last_name': instance.lastName,
      'last_name_required': instance.lastNameRequired,
      'date_of_birth_enabled': instance.dateOfBirthEnabled,
      'date_of_birth_day': instance.dateOfBirthDay,
      'date_of_birth_month': instance.dateOfBirthMonth,
      'date_of_birth_year': instance.dateOfBirthYear,
      'date_of_birth_required': instance.dateOfBirthRequired,
      'company_enabled': instance.companyEnabled,
      'company_required': instance.companyRequired,
      'company': instance.company,
      'street_address_enabled': instance.streetAddressEnabled,
      'street_address_required': instance.streetAddressRequired,
      'street_address': instance.streetAddress,
      'street_address2_enabled': instance.streetAddress2Enabled,
      'street_address2_required': instance.streetAddress2Required,
      'street_address2': instance.streetAddress2,
      'zip_postal_code_enabled': instance.zipPostalCodeEnabled,
      'zip_postal_code_required': instance.zipPostalCodeRequired,
      'zip_postal_code': instance.zipPostalCode,
      'city_enabled': instance.cityEnabled,
      'city_required': instance.cityRequired,
      'city': instance.city,
      'county_enabled': instance.countyEnabled,
      'county_required': instance.countyRequired,
      'county': instance.county,
      'country_enabled': instance.countryEnabled,
      'country_required': instance.countryRequired,
      'country_id': instance.countryId,
      'available_countries': instance.availableCountries,
      'state_province_enabled': instance.stateProvinceEnabled,
      'state_province_required': instance.stateProvinceRequired,
      'state_province_id': instance.stateProvinceId,
      'available_states': instance.availableStates,
      'phone_enabled': instance.phoneEnabled,
      'phone_required': instance.phoneRequired,
      'phone': instance.phone,
      'fax_enabled': instance.faxEnabled,
      'fax_required': instance.faxRequired,
      'fax': instance.fax,
      'newsletter_enabled': instance.newsletterEnabled,
      'newsletter': instance.newsletter,
      'signature_enabled': instance.signatureEnabled,
      'signature': instance.signature,
      'time_zone_id': instance.timeZoneId,
      'allow_customers_to_set_time_zone': instance.allowCustomersToSetTimeZone,
      'available_time_zones': instance.availableTimeZones,
      'vat_number': instance.vatNumber,
      'vat_number_status_note': instance.vatNumberStatusNote,
      'display_vat_number': instance.displayVatNumber,
      'associated_external_auth_records':
          instance.associatedExternalAuthRecords,
      'number_of_external_authentication_providers':
          instance.numberOfExternalAuthenticationProviders,
      'allow_customers_to_remove_associations':
          instance.allowCustomersToRemoveAssociations,
      'customer_attributes': instance.customerAttributes,
      'gdpr_consents': instance.gdprConsents,
      'custom_properties': instance.customProperties,
    };
