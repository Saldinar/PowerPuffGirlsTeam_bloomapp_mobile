import 'package:amamini_client/features/data/model/requests/password_request/password_request.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'password_data_source.g.dart';

@RestApi()
@singleton
abstract class PasswordDataSource {
  @factoryMethod
  factory PasswordDataSource(Dio dio) = _PasswordDataSource;
  @POST('/api-frontend/Customer/ChangePassword')
  Future<HttpResponse<void>> changePassword(@Body() PasswordRequest request);
}
