import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/domain/use_case/products/products_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_by_tag_event.dart';
part 'products_by_tag_state.dart';

class ProductsByTagBloc extends Bloc<ProductsByTagEvent, ProductsByTagState> {
  final ProductsUseCase _productsUseCase;
  ProductsByTagBloc(this._productsUseCase) : super(ProductsByTagInitial()) {
    on<GetProductsByTagEvent>(_getProducts);
  }
  Future<void> _getProducts(
    GetProductsByTagEvent event,
    Emitter<ProductsByTagState> emit,
  ) async {
    emit(ProductsByTagLoading());
    final result = await _productsUseCase.getProductByTagId(
      tagId: event.tagId,
      params: event.params,
    );
    result.fold(
      (failure) => emit(ProductsByTagError(message: failure.message)),
      (products) => emit(ProductsByTagLoaded(products: products)),
    );
  }
}
