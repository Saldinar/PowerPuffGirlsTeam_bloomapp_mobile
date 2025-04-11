part of 'wishlist_bloc.dart';

sealed class WishlistState extends Equatable {
  const WishlistState();
}

final class WishlistInitial extends WishlistState {
  @override
  List<Object> get props => [];
}

final class WishlistLoading extends WishlistState {
  @override
  List<Object> get props => [];
}

final class WishlistLoaded extends WishlistState {
  final WishlistEntity wishlist;

  WishlistLoaded({required this.wishlist});

  @override
  List<Object> get props => [wishlist];
}

final class WishlistError extends WishlistState {
  final String message;

  WishlistError({required this.message});

  @override
  List<Object> get props => [message];
}
