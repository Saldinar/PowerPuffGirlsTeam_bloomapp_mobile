part of 'search_products_bloc.dart';

sealed class SearchProductsState extends Equatable {
  const SearchProductsState();

  @override
  List<Object> get props => [];
}

final class SearchProductsInitial extends SearchProductsState {}

final class SearchProductsLoading extends SearchProductsState {}

final class SearchProductsLoaded extends SearchProductsState {
  final CatalogProductEntity products;
  SearchProductsLoaded({required this.products});
  @override
  List<Object> get props => [products];
}

final class SearchProductsError extends SearchProductsState {
  final String message;
  SearchProductsError({required this.message});
  @override
  List<Object> get props => [message];
}
