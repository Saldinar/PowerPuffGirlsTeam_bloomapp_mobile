// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/domain/use_case/category/category_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'catalog_root_event.dart';
part 'catalog_root_state.dart';

class CatalogRootBloc extends Bloc<CatalogRootEvent, CatalogRootState> {
  final CategoryUseCase _categoryUseCase;
  CatalogRootBloc(this._categoryUseCase) : super(CatalogRootInitial()) {
    on<GetCatalogRootEvent>(_getCatalogRoot);
  }
  Future<void> _getCatalogRoot(
    GetCatalogRootEvent event,
    Emitter<CatalogRootState> emit,
  ) async {
    emit(CatalogRootLoading());
    final categories = await _categoryUseCase.getCatalogRoot();
    categories.fold(
      (failure) => emit(CatalogRootError(message: failure.message)),
      (categories) => emit(CatalogRootLoaded(categories: categories)),
    );
  }
}
