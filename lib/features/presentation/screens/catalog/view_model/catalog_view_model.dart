import 'package:amamini_client/features/presentation/bloc/category/catalog_root/catalog_root_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/manufacturer/all_manufacturers/all_manufacturers_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogViewModel {
  void getCatalogRoot(BuildContext context) {
    context.read<CatalogRootBloc>().add(GetCatalogRootEvent());
  }

  void getAllManufacturers(BuildContext context) {
    context.read<AllManufacturersBloc>().add(GetAllManufacturersEvent());
  }
}
