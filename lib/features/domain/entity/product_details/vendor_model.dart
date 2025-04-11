// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class VendorModelEntity extends Equatable {
  final String? name;
  final String? seName;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const VendorModelEntity({
    required this.name,
    required this.seName,
    required this.id,
    required this.customProperties,
  });

  VendorModelEntity copyWith({
    String? name,
    String? seName,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return VendorModelEntity(
      name: name ?? this.name,
      seName: seName ?? this.seName,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [name, seName, id, customProperties];
}
