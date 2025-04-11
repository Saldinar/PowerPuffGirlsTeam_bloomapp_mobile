import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/value.dart';
import 'package:equatable/equatable.dart';

class CheckoutAttributeEntity extends Equatable {
  final String? name;
  final String? defaultValue;
  final String? textPrompt;
  final bool? isRequired;
  final int? selectedDay;
  final int? selectedMonth;
  final int? selectedYear;
  final List<String>? allowedFileExtensions;
  final String? attributeControlType;
  final List<ValueEntity>? values;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const CheckoutAttributeEntity({
    this.name,
    this.defaultValue,
    this.textPrompt,
    this.isRequired,
    this.selectedDay,
    this.selectedMonth,
    this.selectedYear,
    this.allowedFileExtensions,
    this.attributeControlType,
    this.values,
    this.id,
    this.customProperties,
  });

  CheckoutAttributeEntity copyWith({
    String? name,
    String? defaultValue,
    String? textPrompt,
    bool? isRequired,
    int? selectedDay,
    int? selectedMonth,
    int? selectedYear,
    List<String>? allowedFileExtensions,
    String? attributeControlType,
    List<ValueEntity>? values,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return CheckoutAttributeEntity(
      name: name ?? this.name,
      defaultValue: defaultValue ?? this.defaultValue,
      textPrompt: textPrompt ?? this.textPrompt,
      isRequired: isRequired ?? this.isRequired,
      selectedDay: selectedDay ?? this.selectedDay,
      selectedMonth: selectedMonth ?? this.selectedMonth,
      selectedYear: selectedYear ?? this.selectedYear,
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
      name,
      defaultValue,
      textPrompt,
      isRequired,
      selectedDay,
      selectedMonth,
      selectedYear,
      allowedFileExtensions,
      attributeControlType,
      values,
      id,
      customProperties,
    ];
  }
}
