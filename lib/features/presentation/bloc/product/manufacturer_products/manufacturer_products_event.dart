// ignore_for_file: sort_constructors_first

part of 'manufacturer_products_bloc.dart';

sealed class ManufacturerProductsEvent extends Equatable {
  const ManufacturerProductsEvent();

  @override
  List<Object> get props => [];
}

final class GetManufacturerProductsEvent extends ManufacturerProductsEvent {
  final int manufacturerId;
  final CatalogParams params;
  GetManufacturerProductsEvent({
    required this.manufacturerId,
    required this.params,
  });
}
