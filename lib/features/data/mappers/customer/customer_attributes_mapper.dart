import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/values_mapper/values_mapper.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/customer_attribute.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_attribute.dart';

extension CustomerAttributesMapper on CustomerAttributeResponse {
  CustomerAttributeEntity toEntity() {
    return CustomerAttributeEntity(
      name: name,
      isRequired: isRequired,
      defaultValue: defaultValue,
      attributeControlType: attributeControlType,
      values: values?.map((value) => value.toEntity()).toList(),
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension CustomerAttributesEntityMapper on CustomerAttributeEntity {
  CustomerAttributeResponse toRequest() {
    return CustomerAttributeResponse(
      name: name,
      isRequired: isRequired,
      defaultValue: defaultValue,
      attributeControlType: attributeControlType,
      values: values?.map((value) => value.toRequest()).toList(),
      id: id,
      customProperties: customProperties?.toRequest(),
    );
  }
}
