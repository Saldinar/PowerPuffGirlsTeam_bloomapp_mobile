import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/attribute_mapper/attribute_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:amamini_client/features/domain/entity/product/group.dart';

extension GroupsMapper on GroupResponse {
  GroupEntity toEntity() {
    return GroupEntity(
      id: id,
      name: name,
      attributes:
          attributes?.map((attribute) => attribute.toEntity()).toList() ?? [],
      customProperties: customProperties?.toEntity(),
    );
  }
}
