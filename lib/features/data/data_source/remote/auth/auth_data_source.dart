import 'package:amamini_client/features/data/model/requests/auth_request/auth_request.dart';
import 'package:amamini_client/features/data/model/responses/auth_response/auth_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'auth_data_source.g.dart';

@RestApi()
@singleton
abstract class AuthDataSource {
  @factoryMethod
  factory AuthDataSource(Dio dio) = _AuthDataSource;
  @POST('/api-frontend/Authenticate/GetToken')
  Future<HttpResponse<AuthResponse>> authCustomer(@Body() AuthRequest request);
}
