import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return const WishListView();
  }
}

const _imageSize = 80.0;

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).wishlist),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.unit,
          vertical: Dimensions.unit1_5,
        ),
        child: Column(
          children: [
            MainDecoratedContainer(
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
                                width: 200,
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
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(Icons.shopping_cart_checkout),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
