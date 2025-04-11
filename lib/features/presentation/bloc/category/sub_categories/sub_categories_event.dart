part of 'sub_categories_bloc.dart';

sealed class SubCategoriesEvent extends Equatable {
  const SubCategoriesEvent();

  @override
  List<Object> get props => [];
}

final class GetSubCategoriesEvent extends SubCategoriesEvent {
  final int categoryId;
  GetSubCategoriesEvent({required this.categoryId});
}
