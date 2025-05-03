import 'package:bloom/core/resources/dio_handled_exception.dart';
import 'package:bloom/domain/entity/user/user_request_entity.dart';
import 'package:bloom/domain/entity/user/user_response_entity.dart';
import 'package:bloom/domain/repository/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCycleDetails {
  const GetCycleDetails(this._userRepository);

  final UserRepository _userRepository;

  Future<Either<HandledException, UserResponseEntity>> call(
    UserRequestEntity request,
  ) async {
    return await _userRepository.getCurrentUser(request);
  }
}
