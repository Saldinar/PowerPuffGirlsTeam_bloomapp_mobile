import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class AddToCartButtonsBar extends StatefulWidget {
  const AddToCartButtonsBar({
    super.key,
  });

  @override
  State<AddToCartButtonsBar> createState() => _AddToCartButtonsBarState();
}

class _AddToCartButtonsBarState extends State<AddToCartButtonsBar> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(color: theme.primaryColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CounterButton(
                onTap: () {
                  if (quantity > 1) {
                    setState(() => quantity--);
                  }
                },
                icon: Icons.remove,
              ),
              const SizedBox(width: Dimensions.unit2),
              Text(
                '$quantity',
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: Dimensions.unit2),
              CounterButton(
                onTap: () {
                  if (quantity < 10) {
                    setState(() => quantity++);
                  }
                },
                icon: Icons.add,
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_cart, color: theme.primaryColor),
                        const SizedBox(width: 8),
                        Text(
                          S.of(context).addToCart,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
