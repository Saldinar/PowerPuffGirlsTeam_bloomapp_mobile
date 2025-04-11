// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/domain/use_case/products/products_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'category_products_event.dart';
part 'category_products_state.dart';

class CategoryProductsBloc
    extends Bloc<CategoryProductsEvent, CategoryProductsState> {
  final ProductsUseCase _productsUseCase;
  CategoryProductsBloc(this._productsUseCase)
      : super(CategoryProductsInitial()) {
    on<GetCategoryProductsEvent>(_getCategoryProducts);
  }
  Future<void> _getCategoryProducts(
    GetCategoryProductsEvent event,
    Emitter<CategoryProductsState> emit,
  ) async {
    emit(CategoryProductsLoading());
    final result = await _productsUseCase.getProductsByCategoryId(
      categoryId: event.categoryId,
      params: event.params,
    );
    result.fold(
      (failure) => emit(CategoryProductsError(message: failure.message)),
      (products) => emit(CategoryProductsLoaded(catalogProducts: products)),
    );
  }
}
