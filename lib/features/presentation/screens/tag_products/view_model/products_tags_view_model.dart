import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/presentation/bloc/product/products_by_tag/products_by_tag_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagProducts {
  void getProductsByTag(
    BuildContext context,
    String tagId,
    CatalogParams params,
  ) {
    context
        .read<ProductsByTagBloc>()
        .add(GetProductsByTagEvent(tagId: int.parse(tagId), params: params));
  }
}
