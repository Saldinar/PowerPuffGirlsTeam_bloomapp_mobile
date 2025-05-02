import 'package:bloom/data/dto/responses/user_response/user_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part '../user_data_source.g.dart';

@RestApi()
@injectable
abstract class UserService {
  @factoryMethod
  factory UserService(@Named('Authorized') Dio dio) = _UserService;

  @GET('/api/user/me/')
  Future<HttpResponse<UserResponse>> getCurrentUser(
    @Header('Authorization') String token,
  );
}
