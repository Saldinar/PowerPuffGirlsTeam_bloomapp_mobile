import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/presentation/screens/customer_addresses/widgets/address_card_widget.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CustomerAddressesList extends StatelessWidget {
  final List<AddressEntity> addresses;
  const CustomerAddressesList({
    required this.addresses,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: Dimensions.unit2,
      ),
      itemCount: addresses.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return AddressCard(address: addresses[index]);
      },
    );
  }
}
