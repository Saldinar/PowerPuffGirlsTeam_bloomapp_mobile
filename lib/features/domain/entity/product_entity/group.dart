import 'package:amamini_client/features/domain/entity/product_entity/attribute.dart';
import 'package:amamini_client/features/domain/entity/product_entity/custom_properties.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';

@freezed
class GroupEntity with _$GroupEntity {
  factory GroupEntity({
    required String? name,
    required List<AttributeEntity>? attributes,
    required int id,
    required CustomPropertiesEntity? customProperties,
  }) = _GroupEntity;
}
