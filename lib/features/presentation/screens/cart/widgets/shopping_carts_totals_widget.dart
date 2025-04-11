import 'package:amamini_client/features/presentation/screens/cart/widgets/title_and_value_widget.dart';
import 'package:flutter/material.dart';

class ShoppingCartsTotalWidget extends StatelessWidget {
  const ShoppingCartsTotalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        const TitleAndValueWidget(
          title: 'Sub - total:',
          value: '\$2,785.00',
        ),
        const Divider(),
        const TitleAndValueWidget(
          title: 'Shipping:',
          value: '\$2,785.00',
        ),
        const Divider(),
        const TitleAndValueWidget(
          title: 'Tax:',
          value: '\$2,785.00',
        ),
        const Divider(),
        TitleAndValueWidget(
          title: 'Total:',
          value: '\$2,785.00',
          textStyle: theme.textTheme.titleLarge,
        ),
      ],
    );
  }
}
