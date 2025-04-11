part of 'search_products_bloc.dart';

sealed class SearchProductsEvent extends Equatable {
  const SearchProductsEvent();

  @override
  List<Object> get props => [];
}

final class SearchAllProductsEvent extends SearchProductsEvent {
  final SearchProductsRequest params;
  SearchAllProductsEvent({required this.params});
}
