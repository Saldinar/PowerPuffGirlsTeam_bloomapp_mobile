import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/default_picture_model/default_picture_model_mapper.dart';
import 'package:amamini_client/features/data/model/responses/category_model/category_model.dart';
import 'package:amamini_client/features/domain/entity/category/category_entity.dart';

extension CategoryMapper on CategoryResponse {
  CategoryEntity toEntity() {
    return CategoryEntity(
      name: name ?? '',
      seName: seName ?? '',
      includeInTopMenu: includeInTopMenu ?? false,
      subCategories: subCategories ?? [],
      haveSubCategories: haveSubCategories ?? false,
      pictureModel: pictureModel.toEntity(),
      id: id,
      customProperties: customProperties.toEntity(),
    );
  }
}
