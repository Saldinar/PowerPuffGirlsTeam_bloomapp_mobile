import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/shopping_cart_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'shopping_cart_data_source.g.dart';

@RestApi()
@singleton
abstract class ShoppingCartDataSource {
  @factoryMethod
  factory ShoppingCartDataSource(Dio dio) = _ShoppingCartDataSource;
  @GET('/api-frontend/ShoppingCart/Cart')
  Future<HttpResponse<ShoppingCartResponse>> getShoppingCart();
  @POST('/api-frontend/ShoppingCart/ApplyDiscountCoupon')
  Future<HttpResponse<ShoppingCartResponse>> applyDiscountCoupon(
    @Query('discountCouponCode') String discountCouponCode,
    @Body() CustomPropertiesResponse requestBody,
  );
  @POST('/api-frontend/ShoppingCart/AddProductToCartFromDetails/{productId}')
  Future<HttpResponse<void>> addProductToCartFromDetails(
    @Path('productId') int productId,
    @Query('shoppingCartType') String shippingCartType,
    @Body() CustomPropertiesResponse requestBody,
  );
  @POST('/api-frontend/ShoppingCart/AddProductToCartFromCatalog/{productId}')
  Future<HttpResponse<void>> addProductToCartFromCatalog(
    @Path('productId') int productId,
    @Query('shoppingCartType') String shippingCartType,
    @Query('quantity') int quantity,
  );
  @POST('/api-frontend/ShoppingCart/ApplyGiftCard')
  Future<HttpResponse<ShoppingCartResponse>> applyGiftCardCoupon(
    @Query('discountCouponCode') String giftCardCouponCode,
    @Body() CustomPropertiesResponse requestBody,
  );
  @POST('/api-frontend/ShoppingCart/RemoveDiscountCoupon')
  Future<HttpResponse<ShoppingCartResponse>> removeDiscountCoupon(
    @Body() CustomPropertiesResponse requestBody,
  );
  @POST('/api-frontend/ShoppingCart/RemoveGiftCardCode')
  Future<HttpResponse<ShoppingCartResponse>> removeGiftCardCoupon(
    @Body() CustomPropertiesResponse requestBody,
  );
}
