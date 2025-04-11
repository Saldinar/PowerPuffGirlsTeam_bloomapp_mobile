import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/shopping_cart_entity.dart';
import 'package:amamini_client/features/domain/repository/shopping_cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class ShoppingCartUseCase {
  final ShoppingCartRepository _shoppingCartRepository;
  ShoppingCartUseCase({required ShoppingCartRepository shoppingCartRepository})
      : _shoppingCartRepository = shoppingCartRepository;

  Future<Either<Failure, ShoppingCartEntity>> getShoppingCart() async {
    return _shoppingCartRepository.getShoppingCart();
  }

  Future<Either<Failure, ShoppingCartEntity>> applyDiscountCoupon(
    String discountCouponCode,
    CustomPropertiesEntity requestBody,
  ) async {
    return await _shoppingCartRepository.applyDiscountCoupon(
      discountCouponCode,
      requestBody,
    );
  }

  Future<Either<Failure, ShoppingCartEntity>> applyGiftCardCoupon(
    String giftCardCouponCode,
    CustomPropertiesEntity requestBody,
  ) async {
    return await _shoppingCartRepository.applyGiftCard(
      giftCardCouponCode,
      requestBody,
    );
  }

  Future<Either<Failure, ShoppingCartEntity>> removeDiscountCoupon(
    CustomPropertiesEntity requestBody,
  ) async {
    return await _shoppingCartRepository.removeDiscountCoupon(requestBody);
  }

  Future<Either<Failure, ShoppingCartEntity>> removeGiftCardCoupon(
    CustomPropertiesEntity requestBody,
  ) async {
    return await _shoppingCartRepository.removeGiftCardCoupon(requestBody);
  }

  Future<Either<Failure, void>> addToCartFromCatalog(
    AddProductFromCatalogEntity params,
  ) async {
    return await _shoppingCartRepository.addProductToCartFormCatalog(params);
  }

  Future<Either<Failure, void>> addToCartFromDetails(
    AddProductFromDetailsEntity params,
  ) async {
    return await _shoppingCartRepository.addProductToCartFromDetails(params);
  }
}
