// ignore_for_file: sort_constructors_first
import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/features/domain/use_case/products/products_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final ProductsUseCase _productsUseCase;
  ProductDetailsBloc(this._productsUseCase) : super(ProductDetailsInitial()) {
    on<GetProductDetailsEvent>(_getProductDetails);
  }
  Future<void> _getProductDetails(
    GetProductDetailsEvent event,
    Emitter<ProductDetailsState> emit,
  ) async {
    emit(ProductDetailsLoading());
    final result = await _productsUseCase.getProductDetails(event.productId);
    result.fold(
      (failure) => emit(ProductDetailsError(message: failure.message)),
      (details) => emit(ProductDetailsLoaded(productDetails: details)),
    );
  }
}
