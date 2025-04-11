// ignore_for_file: sort_constructors_first

part of 'category_products_bloc.dart';

sealed class CategoryProductsEvent extends Equatable {
  const CategoryProductsEvent();

  @override
  List<Object> get props => [];
}

final class GetCategoryProductsEvent extends CategoryProductsEvent {
  final int categoryId;
  final CatalogParams params;
  GetCategoryProductsEvent({required this.categoryId, required this.params});
}
