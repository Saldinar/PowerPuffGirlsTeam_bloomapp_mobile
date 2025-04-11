import 'package:amamini_client/features/presentation/screens/customer_details/view_model/customer_card_data.dart';
import 'package:amamini_client/features/presentation/screens/customer_details/widgets/customer_details_card.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

final _customerCardsDataList = [
  CustomerCardData(
    titleBuilder: (context) => S.of(context).customerInfo,
    icon: Icons.account_box,
    onTap: (context) {},
  ),
  CustomerCardData(
    titleBuilder: (context) => S.of(context).addresses,
    icon: Icons.home,
    onTap: (context) {},
  ),
  CustomerCardData(
    titleBuilder: (context) => S.of(context).orders,
    icon: Icons.receipt,
    onTap: (context) {},
  ),
  CustomerCardData(
    titleBuilder: (context) => S.of(context).returnRequests,
    icon: Icons.assignment_return_rounded,
    onTap: (context) {},
  ),
  CustomerCardData(
    titleBuilder: (context) => S.of(context).rewardPoints,
    icon: Icons.control_point_duplicate,
    onTap: (context) {},
  ),
  CustomerCardData(
    titleBuilder: (context) => S.of(context).changePassword,
    icon: Icons.password,
    onTap: (context) {},
  ),
  CustomerCardData(
    titleBuilder: (context) => S.of(context).myProductReviews,
    icon: Icons.reviews_outlined,
    onTap: (context) {},
  ),
  CustomerCardData(
    titleBuilder: (context) => S.of(context).wishlist,
    icon: Icons.favorite,
    onTap: (context) {},
  ),
];

class CustomerCardsList extends StatefulWidget {
  const CustomerCardsList({super.key});

  @override
  State<CustomerCardsList> createState() => _CustomerCardsListState();
}

class _CustomerCardsListState extends State<CustomerCardsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) =>
          const SizedBox(height: Dimensions.unit),
      shrinkWrap: true,
      itemCount: _customerCardsDataList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final cardData = _customerCardsDataList[index];
        return CustomerDetailsCard(
          icon: cardData.icon,
          onTap: cardData.onTap,
          titleBuilder: cardData.titleBuilder,
        );
      },
    );
  }
}
