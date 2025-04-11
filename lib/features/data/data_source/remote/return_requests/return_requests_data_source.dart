import 'package:amamini_client/features/data/model/responses/return_request/return_request_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'return_requests_data_source.g.dart';

@RestApi()
@singleton
abstract class ReturnRequestsDataSource {
  @factoryMethod
  factory ReturnRequestsDataSource(Dio dio) = _ReturnRequestsDataSource;

  @GET('/api-frontend/ReturnRequest/CustomerReturnRequests')
  Future<HttpResponse<ReturnRequestResponse>> getReturnRequests();
}
