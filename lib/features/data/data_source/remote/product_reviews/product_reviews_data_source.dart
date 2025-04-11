import 'package:amamini_client/features/data/model/responses/product_reviews/product_reviews_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'product_reviews_data_source.g.dart';

@RestApi()
@singleton
abstract class ProductReviewsDataSource {
  @factoryMethod
  factory ProductReviewsDataSource(Dio dio) = _ProductReviewsDataSource;

  @GET('/api-frontend/Product/CustomerProductReviews')
  Future<HttpResponse<ProductReviewsResponse>> getProductReviews();
}
