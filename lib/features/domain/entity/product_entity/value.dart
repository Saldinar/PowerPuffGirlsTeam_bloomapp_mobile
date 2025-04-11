import 'package:amamini_client/features/domain/entity/product_entity/custom_properties.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value.freezed.dart';

@freezed
class ValueEntity with _$ValueEntity {
  factory ValueEntity({
    required int attributeTypeId,
    required String valueRaw,
    required String colorSquaresRgb,
    required CustomPropertiesEntity customProperties,
  }) = _ValueEntity;
}
