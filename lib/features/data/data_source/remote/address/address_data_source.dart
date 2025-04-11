import 'package:amamini_client/features/data/model/requests/add_address_request/add_address_model_request.dart';
import 'package:amamini_client/features/data/model/requests/add_address_request/add_address_request.dart';
import 'package:amamini_client/features/data/model/responses/customer_addresses/customer_addresses_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'address_data_source.g.dart';

@RestApi()
@singleton
abstract class AddressDataSource {
  @factoryMethod
  factory AddressDataSource(Dio dio) = _AddressDataSource;

  @GET('/api-frontend/Customer/Addresses')
  Future<HttpResponse<CustomerAddressesResponse>> getCustomerAddresses();

  @DELETE('/api-frontend/Customer/AddressDelete/{addressId}')
  Future<HttpResponse<void>> deleteAddress(@Path('addressId') int addressId);

  @POST('/api-frontend/Customer/AddressAdd')
  Future<HttpResponse<void>> addAddress(@Body() AddAddressRequest request);

  @GET('/api-frontend/Customer/AddressEdit/{addressId}')
  Future<HttpResponse<AddAddressModelRequest>> getAddressDetails(
    @Path() int addressId,
  );

  @PUT('/api-frontend/Customer/AddressEdit')
  Future<HttpResponse<void>> updateAddressDetails(
    @Body() AddAddressRequest request,
  );
}
