// ignore_for_file: sort_constructors_first

part of 'category_products_bloc.dart';

sealed class CategoryProductsState extends Equatable {
  const CategoryProductsState();

  @override
  List<Object> get props => [];
}

final class CategoryProductsInitial extends CategoryProductsState {}

final class CategoryProductsLoading extends CategoryProductsState {}

final class CategoryProductsLoaded extends CategoryProductsState {
  final CatalogProductEntity catalogProducts;
  CategoryProductsLoaded({required this.catalogProducts});
  @override
  List<Object> get props => [catalogProducts];
}

final class CategoryProductsError extends CategoryProductsState {
  final String message;
  CategoryProductsError({required this.message});
  @override
  List<Object> get props => [message];
}
