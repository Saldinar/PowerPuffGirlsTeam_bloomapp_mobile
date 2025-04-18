import 'package:bloom/data/model/requests/auth_request/auth_request.dart';
import 'package:bloom/data/model/responses/auth_response/auth_response.dart';
import 'package:bloom/data/model/requests/register_request/register_request.dart';
import 'package:bloom/data/model/responses/register_response/register_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'auth_data_source.g.dart';

@RestApi()
@singleton
abstract class AuthDataSource {
  @factoryMethod
  factory AuthDataSource(Dio dio) = _AuthDataSource;
  @POST('/api/users/register/')
  Future<HttpResponse<RegisterResponse>> registerUser(
      @Body() RegisterRequest request);
}
