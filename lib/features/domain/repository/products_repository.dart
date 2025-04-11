import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/model/requests/search_products_request/search_products_request.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class ProductsRepository {
  Future<Either<Failure, List<ProductEntity>>> getFeaturedProducts();
  Future<Either<Failure, ProductDetailsEntity>> getProductDetails(
    int productId,
  );
  Future<Either<Failure, CatalogProductEntity>> getProductsByManufacturerId({
    required int manufacturerId,
    required CatalogParams params,
  });
  Future<Either<Failure, CatalogProductEntity>> getProductsByCategoryId({
    required int categoryId,
    required CatalogParams params,
  });
  Future<Either<Failure, CatalogProductEntity>> getProductsByTagId({
    required int tagId,
    required CatalogParams params,
  });
  Future<Either<Failure, CatalogProductEntity>> searchProducts(
    SearchProductsRequest params,
  );
}
