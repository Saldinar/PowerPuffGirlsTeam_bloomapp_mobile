part of 'products_by_tag_bloc.dart';

sealed class ProductsByTagState extends Equatable {
  const ProductsByTagState();

  @override
  List<Object> get props => [];
}

final class ProductsByTagInitial extends ProductsByTagState {}

final class ProductsByTagLoading extends ProductsByTagState {}

final class ProductsByTagLoaded extends ProductsByTagState {
  final CatalogProductEntity products;
  ProductsByTagLoaded({required this.products});
  @override
  List<Object> get props => [products];
}

final class ProductsByTagError extends ProductsByTagState {
  final String message;
  ProductsByTagError({required this.message});
  @override
  List<Object> get props => [message];
}
