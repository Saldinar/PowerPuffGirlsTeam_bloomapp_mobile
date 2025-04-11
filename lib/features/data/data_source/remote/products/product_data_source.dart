import 'package:amamini_client/features/data/model/requests/catalog_request_body/catalog_request_body.dart';
import 'package:amamini_client/features/data/model/requests/search_products_request/search_products_request.dart';
import 'package:amamini_client/features/data/model/responses/catalog_product/catalog_product_response.dart';
import 'package:amamini_client/features/data/model/responses/product/product_response.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_details_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'product_data_source.g.dart';

@RestApi()
@singleton
abstract class ProductDataSource {
  @factoryMethod
  factory ProductDataSource(Dio dio) = _ProductDataSource;

  @GET('/api-frontend/Product/HomePageProducts')
  Future<HttpResponse<List<ProductResponse>>> getHomePageProducts();
  @GET('/api-frontend/Product/GetProductDetails/{productId}')
  Future<HttpResponse<ProductDetailsResponse>> getProductDetails(
    @Path('productId') int productId,
  );
  @POST('/api-frontend/Catalog/GetManufacturerProducts/{manufacturerId}')
  Future<HttpResponse<CatalogProductResponse>> getProductsByManufacturerId(
    @Path('manufacturerId') int manufacturerId,
    @Body() CatalogRequestBody params,
  );
  @POST('/api-frontend/Catalog/GetCategoryProducts/{categoryId}')
  Future<HttpResponse<CatalogProductResponse>> getProductsByCategoryId(
    @Path('categoryId') int categoryId,
    @Body() CatalogRequestBody params,
  );
  @POST('/api-frontend/Catalog/GetTagProducts/{productTagId}')
  Future<HttpResponse<CatalogProductResponse>> getProductsByTagId(
    @Path('productTagId') int tagId,
    @Body() CatalogRequestBody params,
  );
  @POST('/api-frontend/Catalog/SearchProducts')
  Future<HttpResponse<CatalogProductResponse>> searchProducts(
    @Body() SearchProductsRequest request,
  );
}
