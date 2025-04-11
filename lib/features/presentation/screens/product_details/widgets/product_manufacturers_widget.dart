import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_manufacturer.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductManufacturersWidget extends StatelessWidget {
  final ProductDetailsEntity details;

  const ProductManufacturersWidget({
    required this.details,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final manufacturers = details.productDetailsModel.productManufacturers;
    final theme = Theme.of(context);
    if (manufacturers?.isNotEmpty ?? false) {
      return Wrap(
        spacing: Dimensions.unit,
        children: [
          Text(
            S.of(context).manufacturer,
            style: theme.textTheme.titleSmall,
          ),
          ...manufacturers
                  ?.map(
                    (manufacturer) => OpacityBorderedButton(
                      name: manufacturer.name ?? '',
                      onPressed: () {
                        _goToProductManufacturersScreen(context, manufacturer);
                      },
                    ),
                  )
                  .toList() ??
              [],
        ],
      );
    }
    return const SizedBox.shrink();
  }

  void _goToProductManufacturersScreen(
    BuildContext context,
    ProductManufacturerEntity manufacturer,
  ) {
    context.pushNamed(
      Routes.manufacturerProductsPage.name,
      queryParameters: {
        'manufacturerId': '${manufacturer.id}',
        'manufacturerName': '${manufacturer.name}',
      },
    );
  }
}
