import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/product_name.dart';
import 'package:amamini_client/features/presentation/screens/product_details/widgets/reveiw_info_widget.dart';
import 'package:flutter/material.dart';

class ProductNameAndReviewInfoWidget extends StatelessWidget {
  final ProductDetailsEntity details;
  const ProductNameAndReviewInfoWidget({
    required this.details,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductName(name: details.productDetailsModel.name),
        ReviewInfoWidget(
          reviewOverview: details.productDetailsModel.productReviewOverview!,
        ),
      ],
    );
  }
}
