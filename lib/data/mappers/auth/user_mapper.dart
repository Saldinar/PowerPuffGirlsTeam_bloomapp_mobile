import 'package:bloom/data/dto/requests/cycle_request/cycle_request.dart';
import 'package:bloom/data/dto/responses/cycle_response/cycle_response.dart';
import 'package:bloom/domain/entity/user/user_request_entity.dart';
import 'package:bloom/domain/entity/user/user_response_entity.dart';

extension UserRequestEntityToRequest on UserRequestEntity {
  CycleRequest toRequest() {
    return CycleRequest(
      lastPeriodDate: lastPeriodDate,
      cycleLength: cycleLength,
      periodLength: periodLength,
      age: age,
    );
  }
}

extension UserResponseMapperExt on UserResponse {
  UserResponseEntity toEntity() {
    return UserResponseEntity(
      lastPeriodDate: profile.lastPeriodDate,
      cycleLength: profile.cycleLength,
      periodLength: profile.periodLength,
      age: profile.age,
    );
  }
}
