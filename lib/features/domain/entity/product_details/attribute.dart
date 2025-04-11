// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/value.dart';
import 'package:equatable/equatable.dart';

class AttributeEntity extends Equatable {
  final String? name;
  final List<ValueEntity>? values;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const AttributeEntity({
    required this.name,
    required this.values,
    required this.id,
    required this.customProperties,
  });

  AttributeEntity copyWith({
    String? name,
    List<ValueEntity>? values,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return AttributeEntity(
      name: name ?? this.name,
      values: values ?? this.values,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [name, values, id, customProperties];
}
