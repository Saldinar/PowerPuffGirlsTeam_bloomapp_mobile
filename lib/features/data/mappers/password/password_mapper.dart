import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/requests/password_request/password_request.dart';
import 'package:amamini_client/features/domain/entity/customer/password_entity/password_entity.dart';

extension PasswordToRequestMapper on PasswordEntity {
  PasswordRequest toRequest() {
    return PasswordRequest(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
      customProperties: customProperties.toRequest(),
    );
  }
}

extension PasswordToEntityMapper on PasswordRequest {
  PasswordEntity toEntity() {
    return PasswordEntity(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
      customProperties: customProperties!.toEntity(),
    );
  }
}
