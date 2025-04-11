import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/associated_external_auth_record.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_attribute.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/gdpr_consent.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/search_products_entity/available_entity.dart';
import 'package:equatable/equatable.dart';

class CustomerInfoEntity extends Equatable {
  final String? email;
  final String? password;
  final String? emailToRevalidate;
  final bool checkUsernameAvailabilityEnabled;
  final bool allowUsersToChangeUsernames;
  final bool usernamesEnabled;
  final String? username;
  final bool genderEnabled;
  final String? gender;
  final bool firstNameEnabled;
  final String? firstName;
  final bool firstNameRequired;
  final bool lastNameEnabled;
  final String? lastName;
  final bool lastNameRequired;
  final bool dateOfBirthEnabled;
  final int? dateOfBirthDay;
  final int? dateOfBirthMonth;
  final int? dateOfBirthYear;
  final bool dateOfBirthRequired;
  final bool companyEnabled;
  final bool companyRequired;
  final String? company;
  final bool streetAddressEnabled;
  final bool streetAddressRequired;
  final String? streetAddress;
  final bool streetAddress2Enabled;
  final bool streetAddress2Required;
  final String? streetAddress2;
  final bool zipPostalCodeEnabled;
  final bool zipPostalCodeRequired;
  final String? zipPostalCode;
  final bool cityEnabled;
  final bool cityRequired;
  final String? city;
  final bool countyEnabled;
  final bool countyRequired;
  final String? county;
  final bool countryEnabled;
  final bool countryRequired;
  final int? countryId;
  final List<AvailableEntity>? availableCountries;
  final bool stateProvinceEnabled;
  final bool stateProvinceRequired;
  final int? stateProvinceId;
  final List<AvailableEntity>? availableStates;
  final bool phoneEnabled;
  final bool phoneRequired;
  final String? phone;
  final bool faxEnabled;
  final bool faxRequired;
  final String? fax;
  final bool newsletterEnabled;
  final bool newsletter;
  final bool signatureEnabled;
  final String? signature;
  final String? timeZoneId;
  final bool allowCustomersToSetTimeZone;
  final List<AvailableEntity>? availableTimeZones;
  final String? vatNumber;
  final String? vatNumberStatusNote;
  final bool displayVatNumber;
  final List<AssociatedExternalAuthRecordEntity>? associatedExternalAuthRecords;
  final int? numberOfExternalAuthenticationProviders;
  final bool allowCustomersToRemoveAssociations;
  final List<CustomerAttributeEntity>? customerAttributes;
  final List<GdprConsentEntity>? gdprConsents;
  final CustomPropertiesEntity? customProperties;

  const CustomerInfoEntity({
    this.email,
    this.password,
    this.emailToRevalidate,
    this.checkUsernameAvailabilityEnabled = false,
    this.allowUsersToChangeUsernames = true,
    this.usernamesEnabled = false,
    this.username,
    this.genderEnabled = true,
    this.gender,
    this.firstNameEnabled = true,
    this.firstName,
    this.firstNameRequired = true,
    this.lastNameEnabled = true,
    this.lastName,
    this.lastNameRequired = true,
    this.dateOfBirthEnabled = true,
    this.dateOfBirthDay,
    this.dateOfBirthMonth,
    this.dateOfBirthYear,
    this.dateOfBirthRequired = false,
    this.companyEnabled = true,
    this.companyRequired = false,
    this.company,
    this.streetAddressEnabled = false,
    this.streetAddressRequired = false,
    this.streetAddress,
    this.streetAddress2Enabled = false,
    this.streetAddress2Required = false,
    this.streetAddress2,
    this.zipPostalCodeEnabled = false,
    this.zipPostalCodeRequired = false,
    this.zipPostalCode,
    this.cityEnabled = false,
    this.cityRequired = false,
    this.city,
    this.countyEnabled = false,
    this.countyRequired = false,
    this.county,
    this.countryEnabled = false,
    this.countryRequired = false,
    this.countryId = 0,
    this.availableCountries,
    this.stateProvinceEnabled = false,
    this.stateProvinceRequired = false,
    this.stateProvinceId = 0,
    this.availableStates,
    this.phoneEnabled = false,
    this.phoneRequired = false,
    this.phone,
    this.faxEnabled = false,
    this.faxRequired = false,
    this.fax,
    this.newsletterEnabled = true,
    this.newsletter = false,
    this.signatureEnabled = false,
    this.signature,
    this.timeZoneId,
    this.allowCustomersToSetTimeZone = false,
    this.availableTimeZones,
    this.vatNumber,
    this.vatNumberStatusNote,
    this.displayVatNumber = false,
    this.associatedExternalAuthRecords,
    this.numberOfExternalAuthenticationProviders,
    this.allowCustomersToRemoveAssociations = false,
    this.customerAttributes,
    this.gdprConsents,
    this.customProperties,
  });

  CustomerInfoEntity copyWith({
    String? email,
    String? password,
    String? emailToRevalidate,
    bool? checkUsernameAvailabilityEnabled,
    bool? allowUsersToChangeUsernames,
    bool? usernamesEnabled,
    String? username,
    bool? genderEnabled,
    String? gender,
    bool? firstNameEnabled,
    String? firstName,
    bool? firstNameRequired,
    bool? lastNameEnabled,
    String? lastName,
    bool? lastNameRequired,
    bool? dateOfBirthEnabled,
    int? dateOfBirthDay,
    int? dateOfBirthMonth,
    int? dateOfBirthYear,
    bool? dateOfBirthRequired,
    bool? companyEnabled,
    bool? companyRequired,
    String? company,
    bool? streetAddressEnabled,
    bool? streetAddressRequired,
    String? streetAddress,
    bool? streetAddress2Enabled,
    bool? streetAddress2Required,
    String? streetAddress2,
    bool? zipPostalCodeEnabled,
    bool? zipPostalCodeRequired,
    String? zipPostalCode,
    bool? cityEnabled,
    bool? cityRequired,
    String? city,
    bool? countyEnabled,
    bool? countyRequired,
    String? county,
    bool? countryEnabled,
    bool? countryRequired,
    int? countryId,
    List<AvailableEntity>? availableCountries,
    bool? stateProvinceEnabled,
    bool? stateProvinceRequired,
    int? stateProvinceId,
    List<AvailableEntity>? availableStates,
    bool? phoneEnabled,
    bool? phoneRequired,
    String? phone,
    bool? faxEnabled,
    bool? faxRequired,
    String? fax,
    bool? newsletterEnabled,
    bool? newsletter,
    bool? signatureEnabled,
    String? signature,
    String? timeZoneId,
    bool? allowCustomersToSetTimeZone,
    List<AvailableEntity>? availableTimeZones,
    String? vatNumber,
    String? vatNumberStatusNote,
    bool? displayVatNumber,
    List<AssociatedExternalAuthRecordEntity>? associatedExternalAuthRecords,
    int? numberOfExternalAuthenticationProviders,
    bool? allowCustomersToRemoveAssociations,
    List<CustomerAttributeEntity>? customerAttributes,
    List<GdprConsentEntity>? gdprConsents,
    CustomPropertiesEntity? customProperties,
  }) {
    return CustomerInfoEntity(
      email: email ?? this.email,
      password: password ?? this.password,
      emailToRevalidate: emailToRevalidate ?? this.emailToRevalidate,
      checkUsernameAvailabilityEnabled: checkUsernameAvailabilityEnabled ??
          this.checkUsernameAvailabilityEnabled,
      allowUsersToChangeUsernames:
          allowUsersToChangeUsernames ?? this.allowUsersToChangeUsernames,
      usernamesEnabled: usernamesEnabled ?? this.usernamesEnabled,
      username: username ?? this.username,
      genderEnabled: genderEnabled ?? this.genderEnabled,
      gender: gender ?? this.gender,
      firstNameEnabled: firstNameEnabled ?? this.firstNameEnabled,
      firstName: firstName ?? this.firstName,
      firstNameRequired: firstNameRequired ?? this.firstNameRequired,
      lastNameEnabled: lastNameEnabled ?? this.lastNameEnabled,
      lastName: lastName ?? this.lastName,
      lastNameRequired: lastNameRequired ?? this.lastNameRequired,
      dateOfBirthEnabled: dateOfBirthEnabled ?? this.dateOfBirthEnabled,
      dateOfBirthDay: dateOfBirthDay ?? this.dateOfBirthDay,
      dateOfBirthMonth: dateOfBirthMonth ?? this.dateOfBirthMonth,
      dateOfBirthYear: dateOfBirthYear ?? this.dateOfBirthYear,
      dateOfBirthRequired: dateOfBirthRequired ?? this.dateOfBirthRequired,
      companyEnabled: companyEnabled ?? this.companyEnabled,
      companyRequired: companyRequired ?? this.companyRequired,
      company: company ?? this.company,
      streetAddressEnabled: streetAddressEnabled ?? this.streetAddressEnabled,
      streetAddressRequired:
          streetAddressRequired ?? this.streetAddressRequired,
      streetAddress: streetAddress ?? this.streetAddress,
      streetAddress2Enabled:
          streetAddress2Enabled ?? this.streetAddress2Enabled,
      streetAddress2Required:
          streetAddress2Required ?? this.streetAddress2Required,
      streetAddress2: streetAddress2 ?? this.streetAddress2,
      zipPostalCodeEnabled: zipPostalCodeEnabled ?? this.zipPostalCodeEnabled,
      zipPostalCodeRequired:
          zipPostalCodeRequired ?? this.zipPostalCodeRequired,
      zipPostalCode: zipPostalCode ?? this.zipPostalCode,
      cityEnabled: cityEnabled ?? this.cityEnabled,
      cityRequired: cityRequired ?? this.cityRequired,
      city: city ?? this.city,
      countyEnabled: countyEnabled ?? this.countyEnabled,
      countyRequired: countyRequired ?? this.countyRequired,
      county: county ?? this.county,
      countryEnabled: countryEnabled ?? this.countryEnabled,
      countryRequired: countryRequired ?? this.countryRequired,
      countryId: countryId ?? this.countryId,
      availableCountries: availableCountries ?? this.availableCountries,
      stateProvinceEnabled: stateProvinceEnabled ?? this.stateProvinceEnabled,
      stateProvinceRequired:
          stateProvinceRequired ?? this.stateProvinceRequired,
      stateProvinceId: stateProvinceId ?? this.stateProvinceId,
      availableStates: availableStates ?? this.availableStates,
      phoneEnabled: phoneEnabled ?? this.phoneEnabled,
      phoneRequired: phoneRequired ?? this.phoneRequired,
      phone: phone ?? this.phone,
      faxEnabled: faxEnabled ?? this.faxEnabled,
      faxRequired: faxRequired ?? this.faxRequired,
      fax: fax ?? this.fax,
      newsletterEnabled: newsletterEnabled ?? this.newsletterEnabled,
      newsletter: newsletter ?? this.newsletter,
      signatureEnabled: signatureEnabled ?? this.signatureEnabled,
      signature: signature ?? this.signature,
      timeZoneId: timeZoneId ?? this.timeZoneId,
      allowCustomersToSetTimeZone:
          allowCustomersToSetTimeZone ?? this.allowCustomersToSetTimeZone,
      availableTimeZones: availableTimeZones ?? this.availableTimeZones,
      vatNumber: vatNumber ?? this.vatNumber,
      vatNumberStatusNote: vatNumberStatusNote ?? this.vatNumberStatusNote,
      displayVatNumber: displayVatNumber ?? this.displayVatNumber,
      associatedExternalAuthRecords:
          associatedExternalAuthRecords ?? this.associatedExternalAuthRecords,
      numberOfExternalAuthenticationProviders:
          numberOfExternalAuthenticationProviders ??
              this.numberOfExternalAuthenticationProviders,
      allowCustomersToRemoveAssociations: allowCustomersToRemoveAssociations ??
          this.allowCustomersToRemoveAssociations,
      customerAttributes: customerAttributes ?? this.customerAttributes,
      gdprConsents: gdprConsents ?? this.gdprConsents,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      emailToRevalidate,
      checkUsernameAvailabilityEnabled,
      allowUsersToChangeUsernames,
      usernamesEnabled,
      username,
      genderEnabled,
      gender,
      firstNameEnabled,
      firstName,
      firstNameRequired,
      lastNameEnabled,
      lastName,
      lastNameRequired,
      dateOfBirthEnabled,
      dateOfBirthDay,
      dateOfBirthMonth,
      dateOfBirthYear,
      dateOfBirthRequired,
      companyEnabled,
      companyRequired,
      company,
      streetAddressEnabled,
      streetAddressRequired,
      streetAddress,
      streetAddress2Enabled,
      streetAddress2Required,
      streetAddress2,
      zipPostalCodeEnabled,
      zipPostalCodeRequired,
      zipPostalCode,
      cityEnabled,
      cityRequired,
      city,
      countyEnabled,
      countyRequired,
      county,
      countryEnabled,
      countryRequired,
      countryId,
      availableCountries,
      stateProvinceEnabled,
      stateProvinceRequired,
      stateProvinceId,
      availableStates,
      phoneEnabled,
      phoneRequired,
      phone,
      faxEnabled,
      faxRequired,
      fax,
      newsletterEnabled,
      newsletter,
      signatureEnabled,
      signature,
      timeZoneId,
      allowCustomersToSetTimeZone,
      availableTimeZones,
      vatNumber,
      vatNumberStatusNote,
      displayVatNumber,
      associatedExternalAuthRecords,
      numberOfExternalAuthenticationProviders,
      allowCustomersToRemoveAssociations,
      customerAttributes,
      gdprConsents,
      customProperties,
    ];
  }
}
