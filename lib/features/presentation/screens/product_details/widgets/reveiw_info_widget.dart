import 'package:amamini_client/features/domain/entity/product_details/product_review_overview.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:flutter/material.dart';

class ReviewInfoWidget extends StatelessWidget {
  final ProductReviewOverviewEntity reviewOverview;
  const ReviewInfoWidget({
    required this.reviewOverview,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        AppRatingBar(
          ratingBar: reviewOverview.ratingSum?.toDouble() ?? 0.0,
        ),
        Text(
          S.of(context).reviews(reviewOverview.totalReviews ?? 0),
          style: theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
