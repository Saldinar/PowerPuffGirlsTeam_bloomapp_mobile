// ignore_for_file: sort_constructors_first

import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/product/manufacturer_products/manufacturer_products_bloc.dart';
import 'package:amamini_client/features/presentation/screens/manufacturer_products/screens/manufacturer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManufacturerProductsScreen extends StatelessWidget {
  final String manufacturerId;
  final String manufacturerName;
  const ManufacturerProductsScreen({
    required this.manufacturerId,
    required this.manufacturerName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ManufacturerProductsBloc(inject()),
      child: ManufacturerProductsView(
        manufacturerName: manufacturerName,
        manufacturerId: manufacturerId,
      ),
    );
  }
}
