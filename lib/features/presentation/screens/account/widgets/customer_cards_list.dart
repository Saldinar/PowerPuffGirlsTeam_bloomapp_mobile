// ignore_for_file: use_build_context_synchronously

import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/account/view_model/customer_view_model.dart';
import 'package:amamini_client/features/presentation/screens/account/widgets/customer_card_data.dart';
import 'package:amamini_client/features/presentation/screens/account/widgets/customer_details_card.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerCardsList extends StatefulWidget {
  final CustomerInfoEntity customerInfoEntity;
  const CustomerCardsList({required this.customerInfoEntity, super.key});

  @override
  State<CustomerCardsList> createState() => _CustomerCardsListState();
}

class _CustomerCardsListState extends State<CustomerCardsList> {
  final _viewModel = CustomerViewModel();
  @override
  Widget build(BuildContext context) {
    final customerCardsDataList = [
      CustomerCardData(
        titleBuilder: (context) => S.of(context).customerInfo,
        icon: Icons.account_box,
        onTap: (context) => _goToEditDetailsScreen(context),
      ),
      CustomerCardData(
        titleBuilder: (context) => S.of(context).addresses,
        icon: Icons.home,
        onTap: (context) {
          context.pushNamed(Routes.addressesPage.name);
        },
      ),
      CustomerCardData(
        titleBuilder: (context) => S.of(context).orders,
        icon: Icons.receipt,
        onTap: (context) {
          context.pushNamed(Routes.myOrdersPage.name);
        },
      ),
      CustomerCardData(
        titleBuilder: (context) => S.of(context).returnRequests,
        icon: Icons.assignment_return_rounded,
        onTap: (context) {
          context.pushNamed(Routes.returnRequestsPage.name);
        },
      ),
      CustomerCardData(
        titleBuilder: (context) => S.of(context).rewardPoints,
        icon: Icons.control_point_duplicate,
        onTap: (context) {
          context.pushNamed(Routes.rewardPointsPage.name);
        },
      ),
      CustomerCardData(
        titleBuilder: (context) => S.of(context).changePassword,
        icon: Icons.password,
        onTap: (context) {
          context.pushNamed(Routes.changePasswordPage.name);
        },
      ),
      CustomerCardData(
        titleBuilder: (context) => S.of(context).myProductReviews,
        icon: Icons.reviews_outlined,
        onTap: (context) {
          context.pushNamed(Routes.productReviewsPage.name);
        },
      ),
      CustomerCardData(
        titleBuilder: (context) => S.of(context).wishlist,
        icon: Icons.favorite,
        onTap: (context) {
          context.pushNamed(Routes.wishlistPage.name);
        },
      ),
    ];
    return ListView.separated(
      separatorBuilder: (context, index) =>
          const SizedBox(height: Dimensions.unit),
      shrinkWrap: true,
      itemCount: customerCardsDataList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final cardData = customerCardsDataList[index];
        return CustomerDetailsCard(
          icon: cardData.icon,
          onTap: cardData.onTap,
          titleBuilder: cardData.titleBuilder,
        );
      },
    );
  }

  void _goToEditDetailsScreen(BuildContext context) {
    context
        .pushNamed(
      Routes.editCustomerInfoPage.name,
      extra: widget.customerInfoEntity,
    )
        .then((result) {
      if (result != null && result == true) {
        _viewModel.getCustomerInfo(context);
      }
    });
  }
}
