import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_tag.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductTagsGridWidget extends StatelessWidget {
  final List<ProductTagEntity> productTags;
  const ProductTagsGridWidget({
    required this.productTags,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: productTags
          .map(
            (tag) => OpacityBorderedButton(
              name: tag.name ?? '',
              onPressed: () {
                context.pushNamed(
                  Routes.tagProductsPage.name,
                  queryParameters: {
                    'tagId': '${tag.id}',
                    'tagName': '${tag.name}',
                  },
                );
              },
            ),
          )
          .toList(),
    );
  }
}
