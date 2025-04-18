import 'package:bloom/data/dto/requests/register_request/register_request.dart';
import 'package:bloom/data/dto/responses/register_response/register_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_data_source.g.dart';

@RestApi()
@injectable
abstract class AuthService {
  @factoryMethod
  factory AuthService(@Named('Unauthorized') Dio dio) = _AuthService;

  @POST('/api/users/register/')
  Future<HttpResponse<RegisterResponse>> register(
    @Body() RegisterRequest request,
  );
}
