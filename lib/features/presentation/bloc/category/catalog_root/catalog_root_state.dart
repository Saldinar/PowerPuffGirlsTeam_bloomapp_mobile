// ignore_for_file: sort_constructors_first

part of 'catalog_root_bloc.dart';

sealed class CatalogRootState extends Equatable {
  const CatalogRootState();

  @override
  List<Object> get props => [];
}

final class CatalogRootInitial extends CatalogRootState {}

final class CatalogRootLoading extends CatalogRootState {}

final class CatalogRootLoaded extends CatalogRootState {
  final List<CategoryEntity> categories;
  CatalogRootLoaded({required this.categories});
  @override
  List<Object> get props => [categories];
}

final class CatalogRootError extends CatalogRootState {
  final String message;
  CatalogRootError({required this.message});
  @override
  List<Object> get props => [message];
}
