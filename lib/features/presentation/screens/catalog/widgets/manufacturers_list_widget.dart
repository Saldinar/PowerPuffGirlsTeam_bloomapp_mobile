import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_entity.dart';
import 'package:amamini_client/features/presentation/bloc/manufacturer/all_manufacturers/all_manufacturers_bloc.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const _listViewHeight = 120.0;

class ManufacturersListWidget extends StatelessWidget {
  const ManufacturersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).manufacturers, style: theme.textTheme.titleMedium),
        const SizedBox(height: Dimensions.unit1_5),
        BlocBuilder<AllManufacturersBloc, AllManufacturersState>(
          builder: (context, state) {
            if (state is AllManufacturersLoaded) {
              return _buildManufacturersList(state, theme);
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  SizedBox _buildManufacturersList(
    AllManufacturersLoaded state,
    ThemeData theme,
  ) {
    return SizedBox(
      height: _listViewHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: state.manufacturers.length,
        padding: const EdgeInsets.only(right: Dimensions.unit),
        separatorBuilder: (context, index) =>
            const SizedBox(width: Dimensions.unit1_5),
        itemBuilder: (context, index) {
          final manufacturer = state.manufacturers[index];
          return _buildManufacturerCard(context, manufacturer, theme);
        },
      ),
    );
  }

  GestureDetector _buildManufacturerCard(
    BuildContext context,
    ManufacturerEntity manufacturer,
    ThemeData theme,
  ) {
    return GestureDetector(
      onTap: () {
        _goToManufacturerProductsScreen(context, manufacturer);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: theme.primaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: Dimensions.unit0_25,
              spreadRadius: Dimensions.unit0_5,
              color: theme.shadowColor,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.unit1_5),
          child: CustomFadeInImage(
            imageUrl: manufacturer.pictureModel.imageUrl,
          ),
        ),
      ),
    );
  }

  void _goToManufacturerProductsScreen(
    BuildContext context,
    ManufacturerEntity manufacturer,
  ) {
    context.pushNamed(
      Routes.manufacturerProductsPage.name,
      queryParameters: {
        'manufacturerId': '${manufacturer.id}',
        'manufacturerName': manufacturer.name,
      },
    );
  }
}
