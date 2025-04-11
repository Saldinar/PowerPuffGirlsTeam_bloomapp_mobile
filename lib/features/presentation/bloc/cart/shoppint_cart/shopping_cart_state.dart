part of 'shopping_cart_bloc.dart';

sealed class ShoppingCartState extends Equatable {
  const ShoppingCartState();

  @override
  List<Object> get props => [];
}

final class ShoppingCartInitial extends ShoppingCartState {}

final class ShoppingCartLoading extends ShoppingCartState {}

final class ShoppingCartLoaded extends ShoppingCartState {
  final ShoppingCartEntity shoppingCart;
  ShoppingCartLoaded({required this.shoppingCart});
  @override
  List<Object> get props => [shoppingCart];
}

final class ShoppingCartError extends ShoppingCartState {
  final String message;
  ShoppingCartError({required this.message});
  @override
  List<Object> get props => [message];
}
