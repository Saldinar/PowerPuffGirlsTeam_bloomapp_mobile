import 'package:amamini_client/features/data/model/responses/available/available_response.dart';
import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/associated_external_auth_record.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/customer_attribute.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/gdpr_consent.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_info_response.g.dart';

@JsonSerializable()
class CustomerInfoResponse {
  final String? email;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'email_to_revalidate')
  final String? emailToRevalidate;
  @JsonKey(name: 'check_username_availability_enabled')
  final bool? checkUsernameAvailabilityEnabled;
  @JsonKey(name: 'allow_users_to_change_usernames')
  final bool? allowUsersToChangeUsernames;
  @JsonKey(name: 'usernames_enabled')
  final bool? usernamesEnabled;
  final String? username;
  @JsonKey(name: 'gender_enabled')
  final bool? genderEnabled;
  final String? gender;
  @JsonKey(name: 'first_name_enabled')
  final bool? firstNameEnabled;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'first_name_required')
  final bool? firstNameRequired;
  @JsonKey(name: 'last_name_enabled')
  final bool? lastNameEnabled;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'last_name_required')
  final bool? lastNameRequired;
  @JsonKey(name: 'date_of_birth_enabled')
  final bool? dateOfBirthEnabled;
  @JsonKey(name: 'date_of_birth_day')
  final int? dateOfBirthDay;
  @JsonKey(name: 'date_of_birth_month')
  final int? dateOfBirthMonth;
  @JsonKey(name: 'date_of_birth_year')
  final int? dateOfBirthYear;
  @JsonKey(name: 'date_of_birth_required')
  final bool? dateOfBirthRequired;
  @JsonKey(name: 'company_enabled')
  final bool? companyEnabled;
  @JsonKey(name: 'company_required')
  final bool? companyRequired;
  final String? company;
  @JsonKey(name: 'street_address_enabled')
  final bool? streetAddressEnabled;
  @JsonKey(name: 'street_address_required')
  final bool? streetAddressRequired;
  @JsonKey(name: 'street_address')
  final String? streetAddress;
  @JsonKey(name: 'street_address2_enabled')
  final bool? streetAddress2Enabled;
  @JsonKey(name: 'street_address2_required')
  final bool? streetAddress2Required;
  @JsonKey(name: 'street_address2')
  final String? streetAddress2;
  @JsonKey(name: 'zip_postal_code_enabled')
  final bool? zipPostalCodeEnabled;
  @JsonKey(name: 'zip_postal_code_required')
  final bool? zipPostalCodeRequired;
  @JsonKey(name: 'zip_postal_code')
  final String? zipPostalCode;
  @JsonKey(name: 'city_enabled')
  final bool? cityEnabled;
  @JsonKey(name: 'city_required')
  final bool? cityRequired;
  final String? city;
  @JsonKey(name: 'county_enabled')
  final bool? countyEnabled;
  @JsonKey(name: 'county_required')
  final bool? countyRequired;
  final String? county;
  @JsonKey(name: 'country_enabled')
  final bool? countryEnabled;
  @JsonKey(name: 'country_required')
  final bool? countryRequired;
  @JsonKey(name: 'country_id')
  final int? countryId;
  @JsonKey(name: 'available_countries')
  final List<AvailableResponse>? availableCountries;
  @JsonKey(name: 'state_province_enabled')
  final bool? stateProvinceEnabled;
  @JsonKey(name: 'state_province_required')
  final bool? stateProvinceRequired;
  @JsonKey(name: 'state_province_id')
  final int? stateProvinceId;
  @JsonKey(name: 'available_states')
  final List<AvailableResponse>? availableStates;
  @JsonKey(name: 'phone_enabled')
  final bool? phoneEnabled;
  @JsonKey(name: 'phone_required')
  final bool? phoneRequired;
  final String? phone;
  @JsonKey(name: 'fax_enabled')
  final bool? faxEnabled;
  @JsonKey(name: 'fax_required')
  final bool? faxRequired;
  final String? fax;
  @JsonKey(name: 'newsletter_enabled')
  final bool? newsletterEnabled;
  final bool? newsletter;
  @JsonKey(name: 'signature_enabled')
  final bool? signatureEnabled;
  final String? signature;
  @JsonKey(name: 'time_zone_id')
  final String? timeZoneId;
  @JsonKey(name: 'allow_customers_to_set_time_zone')
  final bool? allowCustomersToSetTimeZone;
  @JsonKey(name: 'available_time_zones')
  final List<AvailableResponse>? availableTimeZones;
  @JsonKey(name: 'vat_number')
  final String? vatNumber;
  @JsonKey(name: 'vat_number_status_note')
  final String? vatNumberStatusNote;
  @JsonKey(name: 'display_vat_number')
  final bool? displayVatNumber;
  @JsonKey(name: 'associated_external_auth_records')
  final List<AssociatedExternalAuthRecordResponse>?
      associatedExternalAuthRecords;
  @JsonKey(name: 'number_of_external_authentication_providers')
  final int? numberOfExternalAuthenticationProviders;
  @JsonKey(name: 'allow_customers_to_remove_associations')
  final bool? allowCustomersToRemoveAssociations;
  @JsonKey(name: 'customer_attributes')
  final List<CustomerAttributeResponse>? customerAttributes;
  @JsonKey(name: 'gdpr_consents')
  final List<GdprConsentResponse>? gdprConsents;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const CustomerInfoResponse({
    required this.email,
    required this.checkUsernameAvailabilityEnabled,
    required this.usernamesEnabled,
    required this.genderEnabled,
    required this.firstNameEnabled,
    required this.firstNameRequired,
    required this.lastNameEnabled,
    required this.lastNameRequired,
    required this.dateOfBirthEnabled,
    required this.dateOfBirthRequired,
    required this.companyEnabled,
    required this.companyRequired,
    required this.streetAddressEnabled,
    required this.streetAddressRequired,
    required this.streetAddress2Enabled,
    required this.streetAddress2Required,
    required this.zipPostalCodeEnabled,
    required this.zipPostalCodeRequired,
    required this.cityEnabled,
    required this.cityRequired,
    required this.countyEnabled,
    required this.countyRequired,
    required this.countryEnabled,
    required this.countryRequired,
    required this.stateProvinceEnabled,
    required this.stateProvinceRequired,
    required this.phoneEnabled,
    required this.phoneRequired,
    required this.faxEnabled,
    required this.faxRequired,
    required this.newsletterEnabled,
    required this.newsletter,
    required this.signatureEnabled,
    required this.allowCustomersToSetTimeZone,
    required this.displayVatNumber,
    required this.allowCustomersToRemoveAssociations,
    required this.password,
    this.allowUsersToChangeUsernames,
    this.emailToRevalidate,
    this.username,
    this.gender,
    this.firstName,
    this.lastName,
    this.dateOfBirthDay,
    this.dateOfBirthMonth,
    this.dateOfBirthYear,
    this.company,
    this.streetAddress,
    this.streetAddress2,
    this.zipPostalCode,
    this.city,
    this.county,
    this.countryId,
    this.availableCountries,
    this.stateProvinceId,
    this.availableStates,
    this.phone,
    this.fax,
    this.signature,
    this.timeZoneId,
    this.availableTimeZones,
    this.vatNumber,
    this.vatNumberStatusNote,
    this.associatedExternalAuthRecords,
    this.numberOfExternalAuthenticationProviders,
    this.customerAttributes,
    this.gdprConsents,
    this.customProperties,
  });

  factory CustomerInfoResponse.fromJson(Map<String, dynamic> json) {
    return _$CustomerInfoResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerInfoResponseToJson(this);
}
