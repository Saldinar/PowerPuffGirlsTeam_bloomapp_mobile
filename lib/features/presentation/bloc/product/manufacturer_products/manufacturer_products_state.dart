// ignore_for_file: sort_constructors_first

part of 'manufacturer_products_bloc.dart';

sealed class ManufacturerProductsState extends Equatable {
  const ManufacturerProductsState();

  @override
  List<Object> get props => [];
}

final class ManufacturerProductsInitial extends ManufacturerProductsState {}

final class ManufacturerProductsLoading extends ManufacturerProductsState {}

final class ManufacturerProductsLoaded extends ManufacturerProductsState {
  final CatalogProductEntity products;
  ManufacturerProductsLoaded({required this.products});
  @override
  List<Object> get props => [products];
}

final class ManufacturerProductsError extends ManufacturerProductsState {
  final String message;
  ManufacturerProductsError({required this.message});
  @override
  List<Object> get props => [message];
}
