import 'package:amamini_client/features/data/model/responses/category_model/category_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'category_data_source.g.dart';

@RestApi()
@singleton
abstract class CategoryDataSource {
  @factoryMethod
  factory CategoryDataSource(Dio dio) = _CategoryDataSource;
  @GET('/api-frontend/Catalog/HomePageCategories')
  Future<HttpResponse<List<CategoryResponse>>> getHomePageCategories();
  @GET('/api-frontend/Catalog/GetCatalogRoot')
  Future<HttpResponse<List<CategoryResponse>>> getCatalogRoot(
    @Query('loadImage') bool? loadImage,
  );
  @GET('path')
  Future<HttpResponse<List<CategoryResponse>>> getSubCategories(
    @Path('id') int categoryId,
  );
}
