import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/orders_entity/orders_entity.dart';
import 'package:amamini_client/features/domain/repository/orders_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class OrdersUseCase {
  final OrdersRepository _repository;

  OrdersUseCase({required OrdersRepository repository})
      : _repository = repository;

  Future<Either<Failure, OrdersEntity>> getOrders() async {
    return _repository.getOrders();
  }
}
