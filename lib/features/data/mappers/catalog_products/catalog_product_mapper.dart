import 'package:amamini_client/features/data/mappers/manufacturer/manufacturer_mapper.dart';
import 'package:amamini_client/features/data/model/responses/catalog_product/catalog_product_response.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';

extension CatalogProductMapper on CatalogProductResponse {
  CatalogProductEntity toEntity() {
    return CatalogProductEntity(
      templateViewPath: templateViewPath,
      catalogProductsModel: catalogProductsModel.toEntity(),
    );
  }
}
