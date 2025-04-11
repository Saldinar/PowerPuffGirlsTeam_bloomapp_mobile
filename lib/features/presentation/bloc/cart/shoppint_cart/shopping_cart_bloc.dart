import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/shopping_cart_entity.dart';
import 'package:amamini_client/features/domain/use_case/shopping_cart/shopping_cart_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  final ShoppingCartUseCase _cartUseCase;
  ShoppingCartBloc(this._cartUseCase) : super(ShoppingCartInitial()) {
    on<GetShoppingCartEvent>(_getShoppingCart);
  }
  Future<void> _getShoppingCart(
    GetShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    emit(ShoppingCartLoading());
    final result = await _cartUseCase.getShoppingCart();
    result.fold(
      (failure) => emit(ShoppingCartError(message: failure.message)),
      (cart) => emit(ShoppingCartLoaded(shoppingCart: cart)),
    );
  }
}
