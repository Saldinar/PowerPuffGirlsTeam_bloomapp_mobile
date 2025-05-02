import 'package:bloom/core/resources/dio_handled_exception.dart';
import 'package:bloom/domain/entity/user/user_request_entity.dart';
import 'package:bloom/domain/entity/user/user_response_entity.dart';
import 'package:dartz/dartz.dart';

abstract class UserRerpository {
  Future<Either<HandledException, UserRequestEntity>> request(
    UserRequestEntity request,
  );

// Future<Either<Failure, AuthResponseEntity>> authenticate(AuthRequestEntity request);
}
