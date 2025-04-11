import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class RegistrationModelEntity extends Equatable {
  final CustomerInfoEntity model;
  final CustomPropertiesEntity? form;

  const RegistrationModelEntity({required this.model, this.form});

  RegistrationModelEntity copyWith({
    CustomerInfoEntity? model,
    CustomPropertiesEntity? form,
  }) {
    return RegistrationModelEntity(
      model: model ?? this.model,
      form: form ?? this.form,
    );
  }

  @override
  List<Object?> get props => [model, form];
}
