import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/return_request/return_request_entity.dart';
import 'package:amamini_client/features/domain/repository/return_request_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class ReturnRequestsUseCase {
  final ReturnRequestRepository _repository;

  ReturnRequestsUseCase(this._repository);

  Future<Either<Failure, ReturnRequestEntity>> getReturnRequests() {
    return _repository.getReturnRequests();
  }
}
