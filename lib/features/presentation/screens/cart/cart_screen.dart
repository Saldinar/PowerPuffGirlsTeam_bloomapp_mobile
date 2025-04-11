import 'dart:developer';
import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/cart/shoppint_cart/shopping_cart_bloc.dart';
import 'package:amamini_client/features/presentation/screens/cart/widgets/agree_term_of_services_widget.dart';
import 'package:amamini_client/features/presentation/screens/cart/widgets/discount_field_and_button.dart';
import 'package:amamini_client/features/presentation/screens/cart/widgets/gift_wrapping_container.dart';
import 'package:amamini_client/features/presentation/screens/cart/widgets/shopping_carts_totals_widget.dart';
import 'package:amamini_client/features/presentation/widgets/shopping_cart_item_card.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef AgreeTermOfServiceCallBack = Function(bool);

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoppingCartBloc(inject()),
      child: const ShoppingCartView(),
    );
  }
}

class ShoppingCartView extends StatefulWidget {
  const ShoppingCartView({super.key});

  @override
  State<ShoppingCartView> createState() => _ShoppingCartViewState();
}

class _ShoppingCartViewState extends State<ShoppingCartView> {
  bool isAgree = false;

  void _onAgreeChanged(bool newValue) {
    setState(() {
      isAgree = newValue;
    });
  }

  @override
  void initState() {
    context.read<ShoppingCartBloc>().add(GetShoppingCartEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).shoppingCart),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.unit1_5,
          vertical: Dimensions.unit1_5,
        ),
        child: Column(
          children: [
            const ShoppingCartItemCard(),
            const SizedBox(height: Dimensions.unit),
            const GiftWrappingContainer(),
            const SizedBox(height: Dimensions.unit),
            _buildCouponCodeWidget(),
            const SizedBox(height: Dimensions.unit),
            _buildGiftCardWidget(),
            const SizedBox(height: Dimensions.unit3),
            const ShoppingCartsTotalWidget(),
            const SizedBox(height: Dimensions.unit3),
            AgreeTermOfServiceWidget(
              isAgree: isAgree,
              agreeTermOfService: _onAgreeChanged,
            ),
            const SizedBox(height: Dimensions.unit2),
            MainElevatedButton(
              title: S.of(context).checkout,
              onPressed: isAgree ? _onCheckOutPressed : null,
            ),
          ],
        ),
      ),
    );
  }

  void _onCheckOutPressed() => log('test');

  DiscountFieldAndButton _buildGiftCardWidget() {
    return DiscountFieldAndButton(
      controller: TextEditingController(),
      label: S.of(context).enterYourGiftCardCode,
      onPressed: () {},
    );
  }

  DiscountFieldAndButton _buildCouponCodeWidget() {
    return DiscountFieldAndButton(
      controller: TextEditingController(),
      label: S.of(context).enterYourCouponCode,
      onPressed: () {},
    );
  }
}
