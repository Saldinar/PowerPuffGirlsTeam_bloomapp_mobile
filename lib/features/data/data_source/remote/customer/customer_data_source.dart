import 'package:amamini_client/features/data/model/requests/change_password/change_password_request.dart';
import 'package:amamini_client/features/data/model/requests/registration_model/registration_model_request.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/customer_info_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'customer_data_source.g.dart';

@RestApi()
@singleton
abstract class CustomerDataSource {
  @factoryMethod
  factory CustomerDataSource(Dio dio) = _CustomerDataSource;
  @GET('/api-frontend/Customer/Logout')
  Future<HttpResponse<void>> logOut();

  @GET('/api-frontend/Customer/Info')
  Future<HttpResponse<CustomerInfoResponse>> getCustomerInfo();

  @POST('/api-frontend/Customer/Register')
  Future<HttpResponse<CustomerInfoResponse>> registerCustomer(
    @Body() RegistrationModelRequest request,
  );

  @POST('/api-frontend/Customer/Info')
  Future<HttpResponse<void>> updateCustomerInfo(
    @Body() RegistrationModelRequest request,
  );

  @POST('/api-frontend/Customer/ChangePassword')
  Future<HttpResponse<void>> changePassword(
    @Body() ChangePasswordRequest request,
  );
}
