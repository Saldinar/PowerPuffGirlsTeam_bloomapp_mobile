import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/groups_mapper/groups_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/product_specification_model.dart';
import 'package:amamini_client/features/domain/entity/product/product_specification_model.dart';

extension ProductSpecificationModelMapper on ProductSpecificationModelResponse {
  ProductSpecificationModelEntity toEntity() {
    return ProductSpecificationModelEntity(
      groups: groups?.map((group) => group.toEntity()).toList() ?? [],
      customProperties: customProperties?.toEntity(),
    );
  }
}
