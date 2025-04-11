// ignore_for_file: sort_constructors_first

import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/core/constants/network_constants.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/domain/repository/shopping_cart_repository.dart';
import 'package:amamini_client/features/presentation/bloc/cart/add_to_cart_from_catalog/add_to_cart_from_catalog_bloc.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class FeaturedProductCart extends StatelessWidget {
  final double? wight;
  final ProductEntity product;
  final TextOverflow? textOverflow;

  const FeaturedProductCart({
    required this.product,
    this.wight,
    super.key,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => _goToProductDetailsScreen(context),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(Dimensions.unit1_5),
          boxShadow: [
            BoxShadow(
              blurRadius: Dimensions.unit0_25,
              spreadRadius: Dimensions.unit0_25,
              color: theme.shadowColor,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildImage(context),
            const SizedBox(height: Dimensions.unit1_5),
            Padding(
              padding: const EdgeInsets.all(Dimensions.unit),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProductName(theme),
                  const SizedBox(height: Dimensions.unit0_5),
                  AppRatingBar(
                    ratingBar:
                        product.reviewOverviewModel?.ratingSum?.toDouble() ??
                            0.0,
                  ),
                  const SizedBox(height: Dimensions.unit1_5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildProductPrice(theme),
                      _buildCartButton(theme, context),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _goToProductDetailsScreen(BuildContext context) {
    context.pushNamed(
      Routes.productDetailsPage.name,
      queryParameters: {'productId': '${product.id}'},
    );
  }

  DecoratedBox _buildCartButton(ThemeData theme, BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.secondaryHeaderColor,
      ),
      child: IconButton(
        onPressed: () {
          final params = AddProductFromCatalogEntity(productId: product.id);
          context.read<AddToCartFromCatalogBloc>().add(
                AddProductToCartFromCatalogEvent(params: params),
              );
        },
        icon: const Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }

  Widget _buildProductPrice(ThemeData theme) {
    if (textOverflow != null) {
      return Flexible(
        child: Text(
          product.productPrice.price,
          style: theme.textTheme.titleMedium,
          overflow: textOverflow,
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(right: Dimensions.unit5),
        child: Text(
          product.productPrice.price,
          style: theme.textTheme.titleMedium,
        ),
      );
    }
  }

  Text _buildProductName(ThemeData theme) {
    const maxLines = 2;
    return Text(
      product.name,
      style: theme.textTheme.titleSmall,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius:
          const BorderRadius.vertical(top: Radius.circular(Dimensions.unit)),
      child: SizedBox(
        width: wight,
        child: CustomFadeInImage(
          imageUrl: product.defaultPictureModel.first.imageUrl,
        ),
      ),
    );
  }
}

class CustomFadeInImage extends StatelessWidget {
  final String imageUrl;
  const CustomFadeInImage({
    required this.imageUrl,
    super.key,
  });

  String get defaultImage => 'assets/images/image_placeholder.png';
  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: defaultImage,
      fit: BoxFit.fill,
      image: replaceBaseUrl(imageUrl),
      imageErrorBuilder: (context, error, stackTrace) =>
          Image.asset(defaultImage, fit: BoxFit.fill),
    );
  }

  String replaceBaseUrl(String defaultImage) {
    final path = defaultImage.replaceFirst(RegExp(r'^https?:\/\/[^\/]+'), '');
    return '$baseUrl$path';
  }
}

class AppRatingBar extends StatelessWidget {
  final double ratingBar;
  const AppRatingBar({
    required this.ratingBar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: ratingBar,
      itemBuilder: (context, index) => const Icon(Icons.star),
      itemCount: 5,
      itemSize: 16.0,
      direction: Axis.horizontal,
    );
  }
}
