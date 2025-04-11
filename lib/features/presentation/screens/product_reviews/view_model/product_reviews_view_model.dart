import 'package:amamini_client/features/presentation/bloc/product_reviews/all_product_reviews/all_product_reviews_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductReviewsViewModel {
  void getProductReviews(BuildContext context) {
    context.read<AllProductReviewsBloc>().add(GetAllProductReviewsEvent());
  }
}
