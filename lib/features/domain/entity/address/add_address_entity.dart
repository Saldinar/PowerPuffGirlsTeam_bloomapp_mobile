import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class AddAddressEntity extends Equatable {
  final AddAddressModelEntity? model;
  final CustomPropertiesEntity? form;

  AddAddressEntity({this.model, this.form});

  AddAddressEntity copyWith({
    AddAddressModelEntity? model,
    CustomPropertiesEntity? form,
  }) {
    return AddAddressEntity(
      model: model ?? this.model,
      form: form ?? this.form,
    );
  }

  @override
  List<Object?> get props => [model, form];
}
