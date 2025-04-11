import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/domain/use_case/category/category_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sub_categories_event.dart';
part 'sub_categories_state.dart';

class SubCategoriesBloc extends Bloc<SubCategoriesEvent, SubCategoriesState> {
  final CategoryUseCase _categoryUseCase;
  SubCategoriesBloc(this._categoryUseCase) : super(SubCategoriesInitial()) {
    on<GetSubCategoriesEvent>(_getSubCategories);
  }
  Future<void> _getSubCategories(
    GetSubCategoriesEvent event,
    Emitter<SubCategoriesState> emit,
  ) async {
    emit(SubCategoriesLoading());
    final result = await _categoryUseCase.getSubCategories(event.categoryId);
    result.fold(
      (failure) => emit(SubCategoriesError(message: failure.message)),
      (success) => emit(SubCategoriesLoaded(subCategories: success)),
    );
  }
}
