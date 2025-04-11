import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/default_picture_model.dart';
import 'package:amamini_client/features/domain/entity/product/product_price.dart';
import 'package:amamini_client/features/domain/entity/product/product_specification_model.dart';
import 'package:amamini_client/features/domain/entity/product/review_overview_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity {
  factory ProductEntity({
    required int id,
    required String name,
    required String? shortDescription,
    required String? seName,
    required String? fullDescription,
    required String? sku,
    required String? productType,
    required bool markAsNew,
    required ProductPriceEntity productPrice,
    required List<DefaultPictureModelEntity> defaultPictureModel,
    required ProductSpecificationModelEntity? productSpecificationModel,
    required ReviewOverviewModelEntity? reviewOverviewModel,
    required CustomPropertiesEntity? customProperties,
  }) = _ProductEntity;
}
