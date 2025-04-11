import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_properties.freezed.dart';

@freezed
class CustomPropertiesEntity with _$CustomPropertiesEntity {
  factory CustomPropertiesEntity({
    required String? additionalProp1,
    required String? additionalProp2,
    required String? additionalProp3,
  }) = _CustomPropertiesEntity;
}
