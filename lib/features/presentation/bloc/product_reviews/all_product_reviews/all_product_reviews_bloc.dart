import 'package:amamini_client/features/domain/entity/product_reviews/product_reviews_entity.dart';
import 'package:amamini_client/features/domain/use_case/product_reviews/product_reviews_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_product_reviews_event.dart';
part 'all_product_reviews_state.dart';

class AllProductReviewsBloc
    extends Bloc<AllProductReviewsEvent, AllProductReviewsState> {
  final ProductReviewsUseCase _useCase;
  AllProductReviewsBloc(this._useCase) : super(AllProductReviewsInitial()) {
    on<GetAllProductReviewsEvent>(_getProductReviews);
  }
  Future<void> _getProductReviews(
    GetAllProductReviewsEvent event,
    Emitter<AllProductReviewsState> emit,
  ) async {
    emit(AllProductReviewsLoading());
    final result = await _useCase.getProductReviews();
    result.fold(
      (failure) => emit(AllProductReviewsError(message: failure.message)),
      (success) => emit(AllProductReviewsLoaded(productReviews: success)),
    );
  }
}
