import 'package:amamini_client/features/data/model/requests/search_products_request/search_products_request.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/domain/use_case/products/products_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'search_products_event.dart';
part 'search_products_state.dart';

const _duration = Duration(milliseconds: 250);

class SearchProductsBloc
    extends Bloc<SearchProductsEvent, SearchProductsState> {
  final ProductsUseCase _useCase;
  SearchProductsBloc(this._useCase) : super(SearchProductsInitial()) {
    on<SearchAllProductsEvent>(
      _searchProducts,
      transformer: (events, mapper) {
        return events.debounceTime(_duration).asyncExpand(mapper);
      },
    );
  }
  Future<void> _searchProducts(
    SearchAllProductsEvent event,
    Emitter<SearchProductsState> emit,
  ) async {
    emit(SearchProductsLoading());
    final result = await _useCase.searchProducts(event.params);
    result.fold(
      (failure) => emit(SearchProductsError(message: failure.message)),
      (products) => emit(SearchProductsLoaded(products: products)),
    );
  }
}
