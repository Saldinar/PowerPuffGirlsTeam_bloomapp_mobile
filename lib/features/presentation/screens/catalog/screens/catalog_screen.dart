import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/category/catalog_root/catalog_root_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/manufacturer/all_manufacturers/all_manufacturers_bloc.dart';
import 'package:amamini_client/features/presentation/screens/catalog/screens/catalog_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CatalogRootBloc(inject()),
        ),
        BlocProvider(
          create: (context) => AllManufacturersBloc(inject()),
        ),
      ],
      child: const CatalogView(),
    );
  }
}
