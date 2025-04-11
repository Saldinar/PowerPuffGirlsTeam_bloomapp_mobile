import 'package:amamini_client/features/presentation/bloc/product/product_details/product_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsViewModel {
  void getProductDetails(BuildContext context, String productId) {
    context
        .read<ProductDetailsBloc>()
        .add(GetProductDetailsEvent(productId: int.parse(productId)));
  }
}
