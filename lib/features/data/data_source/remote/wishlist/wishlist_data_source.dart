import 'package:amamini_client/features/data/model/responses/wishlist/wishlist_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'wishlist_data_source.g.dart';

@RestApi()
@singleton
abstract class WishlistDataSource {
  @factoryMethod
  factory WishlistDataSource(Dio dio) = _WishlistDataSource;

  @GET('/api-frontend/Wishlist/Wishlist')
  Future<HttpResponse<WishlistResponse>> getWishlist();
}
