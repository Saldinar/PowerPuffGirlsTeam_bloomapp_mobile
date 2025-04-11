import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/associated_external_auth_record.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/associated_external_auth_record.dart';

extension AssociatedExternalAuthRecordMapper
    on AssociatedExternalAuthRecordResponse {
  AssociatedExternalAuthRecordEntity toEntity() {
    return AssociatedExternalAuthRecordEntity(
      email: email,
      externalIdentifier: externalIdentifier,
      authMethodName: authMethodName,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AssociatedExternalAuthRecordEntityMapper
    on AssociatedExternalAuthRecordEntity {
  AssociatedExternalAuthRecordResponse toRequest() {
    return AssociatedExternalAuthRecordResponse(
      email: email,
      externalIdentifier: externalIdentifier,
      authMethodName: authMethodName,
      id: id,
      customProperties: customProperties?.toRequest(),
    );
  }
}
