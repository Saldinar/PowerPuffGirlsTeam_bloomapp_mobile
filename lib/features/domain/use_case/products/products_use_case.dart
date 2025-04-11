import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/model/requests/search_products_request/search_products_request.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/features/domain/repository/products_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
final class ProductsUseCase {
  ProductsUseCase({required ProductsRepository productsRepository})
      : _productsRepository = productsRepository;

  final ProductsRepository _productsRepository;
  Future<Either<Failure, List<ProductEntity>>> getFeaturedProducts() async {
    return await _productsRepository.getFeaturedProducts();
  }

  Future<Either<Failure, ProductDetailsEntity>> getProductDetails(
    int productId,
  ) async {
    return await _productsRepository.getProductDetails(productId);
  }

  Future<Either<Failure, CatalogProductEntity>> getManufacturerProducts({
    required int manufacturerId,
    required CatalogParams params,
  }) async {
    return await _productsRepository.getProductsByManufacturerId(
      manufacturerId: manufacturerId,
      params: params,
    );
  }

  Future<Either<Failure, CatalogProductEntity>> getProductsByCategoryId({
    required int categoryId,
    required CatalogParams params,
  }) async {
    return await _productsRepository.getProductsByCategoryId(
      categoryId: categoryId,
      params: params,
    );
  }

  Future<Either<Failure, CatalogProductEntity>> getProductByTagId({
    required int tagId,
    required CatalogParams params,
  }) async {
    return await _productsRepository.getProductsByTagId(
      tagId: tagId,
      params: params,
    );
  }

  Future<Either<Failure, CatalogProductEntity>> searchProducts(
    SearchProductsRequest params,
  ) async {
    return await _productsRepository.searchProducts(params);
  }
}
