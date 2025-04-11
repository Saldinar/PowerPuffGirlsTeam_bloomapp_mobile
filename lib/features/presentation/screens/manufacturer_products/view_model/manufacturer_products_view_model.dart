import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/presentation/bloc/product/manufacturer_products/manufacturer_products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManufacturerProductsViewModel {
  void getManufacturerProducts(
    BuildContext context,
    String manufacturerId,
    CatalogParams params,
  ) {
    context.read<ManufacturerProductsBloc>().add(
          GetManufacturerProductsEvent(
            manufacturerId: int.parse(manufacturerId),
            params: params,
          ),
        );
  }
}
