import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/attribute_mapper/attribute_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:amamini_client/features/domain/entity/product/group.dart';

extension GroupResponceMapper on GroupResponse {
  GroupEntity toEntity() {
    return GroupEntity(
      name: name,
      attributes: attributes?.map((attribute) => attribute.toEntity()).toList(),
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension GroupEntityMapper on GroupEntity {
  GroupResponse toRequest() {
    return GroupResponse(
      id: id,
      name: name,
      attributes:
          attributes?.map((attribute) => attribute.toRequest()).toList(),
      customProperties: customProperties?.toRequest(),
    );
  }
}
