// ignore_for_file: sort_constructors_first

part of 'product_details_bloc.dart';

sealed class ProductDetailsEvent extends Equatable {
  const ProductDetailsEvent();

  @override
  List<Object> get props => [];
}

final class GetProductDetailsEvent extends ProductDetailsEvent {
  final int productId;
  GetProductDetailsEvent({required this.productId});
}
