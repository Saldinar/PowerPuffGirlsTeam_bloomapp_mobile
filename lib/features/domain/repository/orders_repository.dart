import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/orders_entity/orders_entity.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersRepository {
  Future<Either<Failure, OrdersEntity>> getOrders();
}
