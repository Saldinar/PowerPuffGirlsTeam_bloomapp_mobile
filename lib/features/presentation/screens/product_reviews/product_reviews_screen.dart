import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/product_reviews/all_product_reviews/all_product_reviews_bloc.dart';
import 'package:amamini_client/features/presentation/screens/product_reviews/view_model/product_reviews_view_model.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllProductReviewsBloc(inject()),
      child: const ProductReviewsView(),
    );
  }
}

class ProductReviewsView extends StatefulWidget {
  const ProductReviewsView({super.key});

  @override
  State<ProductReviewsView> createState() => _ProductReviewsViewState();
}

class _ProductReviewsViewState extends State<ProductReviewsView> {
  final _viewModel = ProductReviewsViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.getProductReviews(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).myProductReviews),
      body: BlocBuilder<AllProductReviewsBloc, AllProductReviewsState>(
        builder: (context, state) {
          if (state is AllProductReviewsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AllProductReviewsLoaded) {
            return Center(
              child: Text(
                S.of(context).noReviews,
                style: theme.textTheme.titleSmall,
              ),
            );
          } else if (state is AllProductReviewsError) {
            return AppErrorWidget(
              message: state.message,
              onPressed: () => _viewModel.getProductReviews(context),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
