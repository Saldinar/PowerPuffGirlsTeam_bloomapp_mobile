part of 'all_product_reviews_bloc.dart';

sealed class AllProductReviewsState extends Equatable {
  const AllProductReviewsState();
}

final class AllProductReviewsInitial extends AllProductReviewsState {
  @override
  List<Object> get props => [];
}

final class AllProductReviewsLoading extends AllProductReviewsState {
  @override
  List<Object> get props => [];
}

final class AllProductReviewsLoaded extends AllProductReviewsState {
  final ProductReviewsEntity productReviews;

  AllProductReviewsLoaded({required this.productReviews});

  @override
  List<Object> get props => [productReviews];
}

final class AllProductReviewsError extends AllProductReviewsState {
  final String message;

  AllProductReviewsError({required this.message});

  @override
  List<Object> get props => [message];
}
