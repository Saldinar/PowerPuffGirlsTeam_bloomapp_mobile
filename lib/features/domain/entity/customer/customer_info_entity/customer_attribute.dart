import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/value.dart';
import 'package:equatable/equatable.dart';

class CustomerAttributeEntity extends Equatable {
  final String? name;
  final bool? isRequired;
  final String? defaultValue;
  final String? attributeControlType;
  final List<ValueEntity>? values;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const CustomerAttributeEntity({
    this.name,
    this.isRequired,
    this.defaultValue,
    this.attributeControlType,
    this.values,
    this.id,
    this.customProperties,
  });

  CustomerAttributeEntity copyWith({
    String? name,
    bool? isRequired,
    String? defaultValue,
    String? attributeControlType,
    List<ValueEntity>? values,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return CustomerAttributeEntity(
      name: name ?? this.name,
      isRequired: isRequired ?? this.isRequired,
      defaultValue: defaultValue ?? this.defaultValue,
      attributeControlType: attributeControlType ?? this.attributeControlType,
      values: values ?? this.values,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      isRequired,
      defaultValue,
      attributeControlType,
      values,
      id,
      customProperties,
    ];
  }
}
