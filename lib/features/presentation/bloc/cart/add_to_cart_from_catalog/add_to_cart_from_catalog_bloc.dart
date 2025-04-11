import 'package:amamini_client/features/domain/repository/shopping_cart_repository.dart';
import 'package:amamini_client/features/domain/use_case/shopping_cart/shopping_cart_use_case.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_to_cart_from_catalog_event.dart';
part 'add_to_cart_from_catalog_state.dart';

class AddToCartFromCatalogBloc
    extends Bloc<AddToCartFromCatalogEvent, AddToCartFromCatalogState> {
  final ShoppingCartUseCase _shoppingCartUseCase;
  AddToCartFromCatalogBloc(this._shoppingCartUseCase)
      : super(AddToCartFromCatalogInitial()) {
    on<AddProductToCartFromCatalogEvent>(_addProductFromCatalog);
  }
  Future<void> _addProductFromCatalog(
    AddProductToCartFromCatalogEvent event,
    Emitter<AddToCartFromCatalogState> emit,
  ) async {
    emit(AddToCartFromCatalogLoading());
    final result =
        await _shoppingCartUseCase.addToCartFromCatalog(event.params);
    result.fold(
      (failure) => emit(AddToCartFromCatalogError(message: failure.message)),
      (_) => emit(AddToCartFromCatalogLoaded()),
    );
  }
}
