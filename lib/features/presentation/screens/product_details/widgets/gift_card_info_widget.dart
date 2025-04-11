import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class GiftCardInfoWidget extends StatefulWidget {
  final ProductDetailsEntity details;

  const GiftCardInfoWidget({required this.details, super.key});

  @override
  State<GiftCardInfoWidget> createState() => _GiftCardInfoWidgetState();
}

class _GiftCardInfoWidgetState extends State<GiftCardInfoWidget> {
  final _recipientsNameController = TextEditingController();
  final _recipientsEmailController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _recipientsEmailController.dispose();
    _recipientsNameController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (widget.details.productDetailsModel.giftCard?.isGiftCard ?? false) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).giftCardInfo,
            style: theme.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: Dimensions.unit1_5),
          MainTextFormField(
            label: S.of(context).recipientsName,
            controller: _recipientsNameController,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).recipientsEmail,
            controller: _recipientsEmailController,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).yourName,
            controller: _nameController,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).yourEmail,
            controller: _emailController,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).message,
            controller: _messageController,
          ),
          const SizedBox(height: Dimensions.unit2),
        ],
      );
    }
    return const SizedBox.shrink();
  }
}
