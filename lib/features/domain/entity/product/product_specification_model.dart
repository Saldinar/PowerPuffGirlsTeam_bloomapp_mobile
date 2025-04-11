import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_specification_model.freezed.dart';

@freezed
class ProductSpecificationModelEntity with _$ProductSpecificationModelEntity {
  factory ProductSpecificationModelEntity({
    required List<GroupEntity>? groups,
    required CustomPropertiesEntity? customProperties,
  }) = _ProductSpecificationModelEntity;
}
