part of 'add_to_cart_from_catalog_bloc.dart';

sealed class AddToCartFromCatalogState extends Equatable {
  const AddToCartFromCatalogState();

  @override
  List<Object> get props => [];
}

final class AddToCartFromCatalogInitial extends AddToCartFromCatalogState {}

final class AddToCartFromCatalogLoading extends AddToCartFromCatalogState {}

final class AddToCartFromCatalogLoaded extends AddToCartFromCatalogState {}

final class AddToCartFromCatalogError extends AddToCartFromCatalogState {
  final String message;
  AddToCartFromCatalogError({required this.message});
  @override
  List<Object> get props => [message];
}
