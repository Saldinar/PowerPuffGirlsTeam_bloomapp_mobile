// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/domain/use_case/category/category_use_case.dart';
import 'package:amamini_client/features/domain/use_case/products/products_use_case.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final ProductsUseCase _productsUseCase;
  final CategoryUseCase _categoryUseCase;
  HomeScreenBloc(this._productsUseCase, this._categoryUseCase)
      : super(HomeScreenInitial()) {
    on<GetHomePageDataEvent>(_fetchHomePageData);
  }
  Future<void> _fetchHomePageData(
    GetHomePageDataEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    if (state is! HomeScreenLoaded) {
      emit(HomeScreenLoading());
    }
    final productsResult = await _productsUseCase.getFeaturedProducts();
    final categoriesResult = await _categoryUseCase.getHomePageCategories();
    productsResult.fold(
      (failure) => emit(HomeScreenError(message: failure.message)),
      (products) {
        categoriesResult.fold(
          (failure) => emit(HomeScreenError(message: failure.message)),
          (categories) {
            emit(
              HomeScreenLoaded(
                products: products,
                categories: categories,
              ),
            );
          },
        );
      },
    );
  }
}
