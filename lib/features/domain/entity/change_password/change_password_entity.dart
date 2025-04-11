import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ChangePasswordEntity extends Equatable {
  final String? oldPassword;
  final String? newPassword;
  final String? confirmNewPassword;
  final CustomPropertiesEntity? customProperties;

  ChangePasswordEntity({
    this.oldPassword,
    this.newPassword,
    this.confirmNewPassword,
    this.customProperties,
  });
  ChangePasswordEntity copyWith({
    String? oldPassword,
    String? newPassword,
    String? confirmNewPassword,
    CustomPropertiesEntity? customProperties,
  }) {
    return ChangePasswordEntity(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
      confirmNewPassword: confirmNewPassword ?? this.confirmNewPassword,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [
        oldPassword,
        newPassword,
        confirmNewPassword,
      ];
}
