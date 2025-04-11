import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/shopping_cart_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class ShoppingCartRepository {
  Future<Either<Failure, ShoppingCartEntity>> getShoppingCart();
  Future<Either<Failure, ShoppingCartEntity>> applyDiscountCoupon(
    String discountCouponCode,
    CustomPropertiesEntity requestBody,
  );
  Future<Either<Failure, ShoppingCartEntity>> applyGiftCard(
    String giftCardCouponCode,
    CustomPropertiesEntity requestBody,
  );
  Future<Either<Failure, ShoppingCartEntity>> removeDiscountCoupon(
    CustomPropertiesEntity requestBody,
  );
  Future<Either<Failure, ShoppingCartEntity>> removeGiftCardCoupon(
    CustomPropertiesEntity requestBody,
  );
  Future<Either<Failure, void>> addProductToCartFormCatalog(
    AddProductFromCatalogEntity params,
  );
  Future<Either<Failure, void>> addProductToCartFromDetails(
    AddProductFromDetailsEntity params,
  );
}

class AddProductFromCatalogEntity extends Equatable {
  final int productId;
  final String shoppingCartType;
  final int quantity;
  AddProductFromCatalogEntity({
    required this.productId,
    this.shoppingCartType = 'ShoppingCart',
    this.quantity = 1,
  });
  AddProductFromCatalogEntity copyWith({
    int? productId,
    String? shoppingCartType,
    int? quantity,
  }) {
    return AddProductFromCatalogEntity(
      productId: productId ?? this.productId,
      shoppingCartType: shoppingCartType ?? this.shoppingCartType,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props => [
        productId,
        shoppingCartType,
        quantity,
      ];
}

class AddProductFromDetailsEntity extends Equatable {
  final int productId;
  final String shoppingCartType;

  final CustomPropertiesEntity requestBody;
  AddProductFromDetailsEntity({
    required this.productId,
    required this.requestBody,
    this.shoppingCartType = 'ShoppingCart',
  });
  AddProductFromDetailsEntity copyWith({
    int? productId,
    String? shoppingCartType,
    CustomPropertiesEntity? requestBody,
  }) {
    return AddProductFromDetailsEntity(
      productId: productId ?? this.productId,
      requestBody: requestBody ?? this.requestBody,
      shoppingCartType: shoppingCartType ?? this.shoppingCartType,
    );
  }

  @override
  List<Object?> get props => [
        productId,
        shoppingCartType,
        requestBody,
      ];
}
