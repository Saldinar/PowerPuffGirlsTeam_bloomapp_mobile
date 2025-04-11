// ignore_for_file: sort_constructors_first

part of 'home_screen_bloc.dart';

sealed class HomeScreenState extends Equatable {
  const HomeScreenState();

  @override
  List<Object> get props => [];
}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenLoading extends HomeScreenState {}

final class HomeScreenLoaded extends HomeScreenState {
  final List<ProductEntity> products;
  final List<CategoryEntity> categories;
  HomeScreenLoaded({required this.products, required this.categories});
  @override
  List<Object> get props => [products, categories];
}

final class HomeScreenError extends HomeScreenState {
  final String message;
  HomeScreenError({required this.message});
  @override
  List<Object> get props => [message];
}
