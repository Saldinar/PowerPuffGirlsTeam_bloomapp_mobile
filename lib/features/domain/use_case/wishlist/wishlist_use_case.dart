import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/wishlist/wishlist_entity.dart';
import 'package:amamini_client/features/domain/repository/wishlist_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class WishlistUseCase {
  final WishlistRepository _repository;

  WishlistUseCase(this._repository);

  Future<Either<Failure, WishlistEntity>> getWishlist() async {
    return await _repository.getWishlist();
  }
}
