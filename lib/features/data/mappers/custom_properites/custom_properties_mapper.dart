import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';

extension CustomPropertiesMapper on CustomPropertiesResponse {
  CustomPropertiesEntity toEntity() {
    return CustomPropertiesEntity(
      additionalProp1: additionalProp1,
      additionalProp2: additionalProp2,
      additionalProp3: additionalProp3,
    );
  }
}

extension CustomPropertiesRequestMapper on CustomPropertiesEntity {
  CustomPropertiesResponse toRequest() {
    return CustomPropertiesResponse(
      additionalProp1: additionalProp1,
      additionalProp2: additionalProp2,
      additionalProp3: additionalProp3,
    );
  }
}
