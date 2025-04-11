import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/values_mapper/values_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/attribute.dart';
import 'package:amamini_client/features/domain/entity/product/attribute.dart';

extension AttributeMapper on AttributeResponse {
  AttributeEntity toEntity() {
    return AttributeEntity(
      name: name,
      values: values?.map((value) => value.toEntity()).toList() ?? [],
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AttributeEntityMapper on AttributeEntity {
  AttributeResponse toRequest() {
    return AttributeResponse(
      id: id,
      name: name,
      values: values?.map((value) => value.toRequest()).toList(),
      customProperties: customProperties?.toRequest(),
    );
  }
}
