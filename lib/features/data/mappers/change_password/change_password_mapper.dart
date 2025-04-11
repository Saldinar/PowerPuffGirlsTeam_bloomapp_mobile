import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/requests/change_password/change_password_request.dart';
import 'package:amamini_client/features/domain/entity/change_password/change_password_entity.dart';

extension ChangePasswordMapper on ChangePasswordEntity {
  ChangePasswordRequest toRequest() {
    return ChangePasswordRequest(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
      customProperties: customProperties?.toRequest(),
    );
  }
}
