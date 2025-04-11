import 'package:amamini_client/features/data/model/responses/product_response/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product_entity/custom_properties.dart';

extension CustomPropertiesMapper on CustomPropertiesResponse {
  CustomPropertiesEntity toEntity() {
    return CustomPropertiesEntity(
      additionalProp1: additionalProp1,
      additionalProp2: additionalProp2,
      additionalProp3: additionalProp3,
    );
  }
}
