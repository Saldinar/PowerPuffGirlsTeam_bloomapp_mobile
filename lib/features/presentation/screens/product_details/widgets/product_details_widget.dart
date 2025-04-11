import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/gift_card_info_widget.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/price_and_shipping_row.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/product_manufacturers_widget.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/product_name_and_review_widget.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/product_price.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/product_tags_grid.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class ProductDetailsList extends StatelessWidget {
  final ProductDetailsEntity details;
  const ProductDetailsList({
    required this.details,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(color: theme.scaffoldBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.unit1_5,
          vertical: Dimensions.unit2_5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductNameAndReviewInfoWidget(details: details),
            const SizedBox(height: Dimensions.unit1_5),
            ProductPrice(details: details),
            const SizedBox(height: Dimensions.unit1_5),
            PriceAndShippingRow(details: details),
            const SizedBox(height: Dimensions.unit1_5),
            ProductManufacturersWidget(details: details),
            const SizedBox(height: Dimensions.unit),
            GiftCardInfoWidget(details: details),
            Text(details.productDetailsModel.fullDescription ?? ''),
            const SizedBox(height: Dimensions.unit),
            ProductTagsGridWidget(
              productTags: details.productDetailsModel.productTags ?? [],
            ),
          ],
        ),
      ),
    );
  }
}
