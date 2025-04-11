import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

const _imageSize = 80.0;
const _productNameWight = 200.0;

class ShoppingCartItemCard extends StatelessWidget {
  const ShoppingCartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MainDecoratedContainer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: _imageSize,
            width: _imageSize,
            color: AppColors.black,
          ),
          const SizedBox(width: Dimensions.unit1_5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: _productNameWight,
                        child: Text(
                          'Nike SB Zoom Stefan Janovski "Medium mint',
                          style: theme.textTheme.titleSmall
                              ?.copyWith(color: AppColors.primary),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const Icon(Icons.delete),
                  ],
                ),
                const SizedBox(height: Dimensions.unit2),
                Text(
                  'SKU: NK_ZSJ_MM',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Price: \$30.00',
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: Dimensions.unit),
                Row(
                  children: [
                    CounterButton(
                      icon: Icons.remove,
                      onTap: () {},
                    ),
                    const SizedBox(width: Dimensions.unit2),
                    Text(
                      '1',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: Dimensions.unit2),
                    CounterButton(
                      icon: Icons.remove,
                      onTap: () {},
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '\$30.0',
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
