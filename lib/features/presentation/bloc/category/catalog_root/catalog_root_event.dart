part of 'catalog_root_bloc.dart';

sealed class CatalogRootEvent extends Equatable {
  const CatalogRootEvent();

  @override
  List<Object> get props => [];
}

final class GetCatalogRootEvent extends CatalogRootEvent {}
