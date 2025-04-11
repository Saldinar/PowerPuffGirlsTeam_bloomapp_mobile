import 'package:amamini_client/features/data/mappers/product/custom_properites_mapper/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product_response/default_picture_model.dart';
import 'package:amamini_client/features/domain/entity/product_entity/default_picture_model.dart';

extension DefaultPictureModelMapper on DefaultPictureModelResponse {
  DefaultPictureModelEntity toEntity() {
    return DefaultPictureModelEntity(
      imageUrl: imageUrl,
      thumbImageUrl: thumbImageUrl,
      fullSizeImageUrl: fullSizeImageUrl,
      title: title,
      alternateText: alternateText,
      customProperties: customProperties?.toEntity(),
    );
  }
}
