// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/value.dart';
import 'package:equatable/equatable.dart';

class ProductAttributeEntity extends Equatable {
  final int? productId;
  final int? productAttributeId;
  final String? name;
  final String? description;
  final String? textPrompt;
  final bool? isRequired;
  final String? defaultValue;
  final int? selectedDay;
  final int? selectedMonth;
  final int? selectedYear;
  final bool? hasCondition;
  final List<String>? allowedFileExtensions;
  final String? attributeControlType;
  final List<ValueEntity>? values;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const ProductAttributeEntity({
    required this.productId,
    required this.productAttributeId,
    required this.name,
    required this.description,
    required this.textPrompt,
    required this.isRequired,
    required this.defaultValue,
    required this.selectedDay,
    required this.selectedMonth,
    required this.selectedYear,
    required this.hasCondition,
    required this.allowedFileExtensions,
    required this.attributeControlType,
    required this.values,
    required this.id,
    required this.customProperties,
  });

  ProductAttributeEntity copyWith({
    int? productId,
    int? productAttributeId,
    String? name,
    String? description,
    String? textPrompt,
    bool? isRequired,
    String? defaultValue,
    int? selectedDay,
    int? selectedMonth,
    int? selectedYear,
    bool? hasCondition,
    List<String>? allowedFileExtensions,
    String? attributeControlType,
    List<ValueEntity>? values,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductAttributeEntity(
      productId: productId ?? this.productId,
      productAttributeId: productAttributeId ?? this.productAttributeId,
      name: name ?? this.name,
      description: description ?? this.description,
      textPrompt: textPrompt ?? this.textPrompt,
      isRequired: isRequired ?? this.isRequired,
      defaultValue: defaultValue ?? this.defaultValue,
      selectedDay: selectedDay ?? this.selectedDay,
      selectedMonth: selectedMonth ?? this.selectedMonth,
      selectedYear: selectedYear ?? this.selectedYear,
      hasCondition: hasCondition ?? this.hasCondition,
      allowedFileExtensions:
          allowedFileExtensions ?? this.allowedFileExtensions,
      attributeControlType: attributeControlType ?? this.attributeControlType,
      values: values ?? this.values,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      productId,
      productAttributeId,
      name,
      description,
      textPrompt,
      isRequired,
      defaultValue,
      selectedDay,
      selectedMonth,
      selectedYear,
      hasCondition,
      allowedFileExtensions,
      attributeControlType,
      values,
      id,
      customProperties,
    ];
  }
}
