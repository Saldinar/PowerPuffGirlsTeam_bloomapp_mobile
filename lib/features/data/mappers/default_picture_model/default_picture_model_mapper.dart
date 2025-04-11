import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/picture_model/default_picture_model.dart';
import 'package:amamini_client/features/domain/entity/product/default_picture_model.dart';

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
