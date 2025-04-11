part of 'sub_categories_bloc.dart';

sealed class SubCategoriesState extends Equatable {
  const SubCategoriesState();

  @override
  List<Object> get props => [];
}

final class SubCategoriesInitial extends SubCategoriesState {}

final class SubCategoriesLoading extends SubCategoriesState {}

final class SubCategoriesLoaded extends SubCategoriesState {
  final List<CategoryEntity> subCategories;
  SubCategoriesLoaded({required this.subCategories});
  @override
  List<Object> get props => [subCategories];
}

final class SubCategoriesError extends SubCategoriesState {
  final String message;
  SubCategoriesError({required this.message});
  @override
  List<Object> get props => [message];
}
