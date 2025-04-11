part of 'all_product_reviews_bloc.dart';

sealed class AllProductReviewsEvent extends Equatable {
  const AllProductReviewsEvent();
}

final class GetAllProductReviewsEvent extends AllProductReviewsEvent {
  @override
  List<Object?> get props => [];
}
