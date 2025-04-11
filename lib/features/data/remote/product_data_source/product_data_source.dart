import 'package:amamini_client/features/data/model/responses/product_response/product_response.dart';
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
}
