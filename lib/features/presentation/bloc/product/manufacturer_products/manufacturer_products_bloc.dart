// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/domain/use_case/products/products_use_case.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'manufacturer_products_event.dart';
part 'manufacturer_products_state.dart';

class ManufacturerProductsBloc
    extends Bloc<ManufacturerProductsEvent, ManufacturerProductsState> {
  final ProductsUseCase _manufacturerUseCase;
  ManufacturerProductsBloc(this._manufacturerUseCase)
      : super(ManufacturerProductsInitial()) {
    on<GetManufacturerProductsEvent>(_getManufacturerProducts);
  }
  Future<void> _getManufacturerProducts(
    GetManufacturerProductsEvent event,
    Emitter<ManufacturerProductsState> emit,
  ) async {
    emit(ManufacturerProductsLoading());
    final result = await _manufacturerUseCase.getManufacturerProducts(
      manufacturerId: event.manufacturerId,
      params: event.params,
    );
    result.fold(
      (failure) => emit(ManufacturerProductsError(message: failure.message)),
      (success) => emit(ManufacturerProductsLoaded(products: success)),
    );
  }
}
