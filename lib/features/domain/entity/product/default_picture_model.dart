import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_picture_model.freezed.dart';

@freezed
class DefaultPictureModelEntity with _$DefaultPictureModelEntity {
  factory DefaultPictureModelEntity({
    required String imageUrl,
    required String? thumbImageUrl,
    required String? fullSizeImageUrl,
    required String? title,
    required String? alternateText,
    required CustomPropertiesEntity? customProperties,
  }) = _DefaultPictureModelEntity;
}
