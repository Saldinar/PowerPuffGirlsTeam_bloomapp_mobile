import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/gdpr_consent.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/gdpr_consent.dart';

extension GdprConsentsMapper on GdprConsentResponse {
  GdprConsentEntity toEntity() {
    return GdprConsentEntity(
      message: message,
      isRequired: isRequired,
      requiredMessage: requiredMessage,
      accepted: accepted,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension GdprContestEntityMapper on GdprConsentEntity {
  GdprConsentResponse toRequest() {
    return GdprConsentResponse(
      message: message,
      isRequired: isRequired,
      requiredMessage: requiredMessage,
      accepted: accepted,
      id: id,
      customProperties: customProperties?.toRequest(),
    );
  }
}
