part of 'add_to_cart_from_catalog_bloc.dart';

sealed class AddToCartFromCatalogEvent extends Equatable {
  const AddToCartFromCatalogEvent();

  @override
  List<Object> get props => [];
}

final class AddProductToCartFromCatalogEvent extends AddToCartFromCatalogEvent {
  final AddProductFromCatalogEntity params;
  AddProductToCartFromCatalogEvent({required this.params});
}
