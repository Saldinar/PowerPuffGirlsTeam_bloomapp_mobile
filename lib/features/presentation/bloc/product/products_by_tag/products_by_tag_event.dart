part of 'products_by_tag_bloc.dart';

sealed class ProductsByTagEvent extends Equatable {
  const ProductsByTagEvent();

  @override
  List<Object> get props => [];
}

final class GetProductsByTagEvent extends ProductsByTagEvent {
  final int tagId;
  final CatalogParams params;
  GetProductsByTagEvent({required this.tagId, required this.params});
}
