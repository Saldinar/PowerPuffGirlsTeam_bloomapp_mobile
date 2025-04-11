// ignore_for_file: sort_constructors_first

import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/product/product_details/product_details_bloc.dart';
import 'package:amamini_client/features/presentation/screens/product_details/view_model/product_details_view_model.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/add_to_cart_buttons_bar.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/product_details_widget.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/product_image_carousel_widget.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _bottomGap = 100.0;

class ProductDetailsScreen extends StatelessWidget {
  final String productId;
  const ProductDetailsScreen({required this.productId, super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsBloc(inject()),
      child: ProductDetailsView(productId: productId),
    );
  }
}

class ProductDetailsView extends StatefulWidget {
  final String productId;
  const ProductDetailsView({
    required this.productId,
    super.key,
  });

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final _viewModel = ProductDetailsViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.getProductDetails(context, widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
      builder: (context, state) {
        if (state is ProductDetailsLoading) {
          return const DefaultAppBarLoadingPlaceholder();
        } else if (state is ProductDetailsLoaded) {
          final details = state.productDetails;
          return Scaffold(
            floatingActionButton: const AddToCartButtonsBar(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            appBar: MainAppBar(title: details.productDetailsModel.name),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ImagesCarouselWidget(
                    pictures: details.productDetailsModel.pictureModels ?? [],
                  ),
                  ProductDetailsList(details: details),
                  const SizedBox(height: _bottomGap),
                ],
              ),
            ),
          );
        } else if (state is ProductDetailsError) {
          return Scaffold(body: AppErrorWidget(message: state.message));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
