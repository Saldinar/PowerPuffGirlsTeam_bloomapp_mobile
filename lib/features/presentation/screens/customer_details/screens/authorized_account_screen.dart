import 'package:amamini_client/features/presentation/screens/customer_details/widgets/customer_cards_list.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CustomerDetailsScreen extends StatelessWidget {
  const CustomerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomerDetailsView();
  }
}

class CustomerDetailsView extends StatelessWidget {
  const CustomerDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).myAccount),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.unit),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomerInfoWidget(),
              const SizedBox(height: Dimensions.unit2),
              const CustomerCardsList(),
              const SizedBox(height: Dimensions.unit),
              MainElevatedButton(
                title: S.of(context).logOut,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: theme.primaryColor,
          child: Text('AA', style: theme.textTheme.titleLarge),
        ),
        const SizedBox(width: Dimensions.unit),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('TEST TEST', style: theme.textTheme.titleMedium),
            Text(
              'TEST TEST',
              style: theme.textTheme.titleSmall
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
