part of 'wishlist_bloc.dart';

sealed class WishlistEvent extends Equatable {
  const WishlistEvent();
}

final class GetWishlistEvent extends WishlistEvent {
  @override
  List<Object?> get props => [];
}
