import 'package:amamini_client/features/domain/entity/wishlist/wishlist_entity.dart';
import 'package:amamini_client/features/domain/use_case/wishlist/wishlist_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final WishlistUseCase _useCase;
  WishlistBloc(this._useCase) : super(WishlistInitial()) {
    on<GetWishlistEvent>(_getWishlist);
  }
  Future<void> _getWishlist(
    GetWishlistEvent event,
    Emitter<WishlistState> emit,
  ) async {
    emit(WishlistLoading());
    final result = await _useCase.getWishlist();
    result.fold(
      (failure) => emit(WishlistError(message: failure.message)),
      (success) => emit(WishlistLoaded(wishlist: success)),
    );
  }
}
