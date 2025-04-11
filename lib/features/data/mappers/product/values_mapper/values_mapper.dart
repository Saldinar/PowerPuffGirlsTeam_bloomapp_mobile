import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/value.dart';
import 'package:amamini_client/features/domain/entity/product/value.dart';

extension ValuesMapper on ValueResponse {
  ValueEntity toEntity() {
    return ValueEntity(
      attributeTypeId: attributeTypeId ?? 0,
      valueRaw: valueRaw ?? '',
      colorSquaresRgb: colorSquaresRgb ?? '',
      customProperties: customProperties!.toEntity(),
    );
  }
}

extension ValueEntityMapper on ValueEntity {
  ValueResponse toRequest() {
    return ValueResponse(
      attributeTypeId: attributeTypeId,
      valueRaw: valueRaw,
      colorSquaresRgb: colorSquaresRgb,
      customProperties: customProperties.toRequest(),
    );
  }
}
