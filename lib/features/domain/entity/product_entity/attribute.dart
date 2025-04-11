import 'package:amamini_client/features/domain/entity/product_entity/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product_entity/value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute.freezed.dart';

@freezed
class AttributeEntity with _$AttributeEntity {
  factory AttributeEntity({
    required String? name,
    required List<ValueEntity>? values,
    required int id,
    required CustomPropertiesEntity? customProperties,
  }) = _AttributeEntity;
}
