import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/return_request/return_request_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ReturnRequestRepository {
  Future<Either<Failure, ReturnRequestEntity>> getReturnRequests();
}
