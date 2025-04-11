import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class PasswordEntity extends Equatable {
  final String oldPassword;
  final String newPassword;
  final String confirmNewPassword;
  final CustomPropertiesEntity customProperties;

  const PasswordEntity({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmNewPassword,
    required this.customProperties,
  });

  @override
  List<Object?> get props {
    return [
      oldPassword,
      newPassword,
      confirmNewPassword,
      customProperties,
    ];
  }
}
