import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/account/view_model/customer_view_model.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CustomerInfoWidget extends StatelessWidget {
  final CustomerInfoEntity customerEntity;
  const CustomerInfoWidget({
    required this.customerEntity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = CustomerViewModel();
    final theme = Theme.of(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: theme.primaryColor,
          child: Text(
            viewModel.getInitials(
              customerEntity.firstName,
              customerEntity.lastName,
            ),
            style: theme.textTheme.titleLarge,
          ),
        ),
        const SizedBox(width: Dimensions.unit2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${customerEntity.firstName} ${customerEntity.lastName}',
              style: theme.textTheme.titleMedium,
            ),
            Text(
              customerEntity.email ?? '',
              style: theme.textTheme.titleSmall
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
