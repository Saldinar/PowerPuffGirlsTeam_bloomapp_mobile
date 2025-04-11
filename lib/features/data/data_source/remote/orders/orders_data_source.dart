import 'package:amamini_client/features/data/model/responses/orders_response/orders_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'orders_data_source.g.dart';

@RestApi()
@singleton
abstract class OrdersDataSource {
  @factoryMethod
  factory OrdersDataSource(Dio dio) = _OrdersDataSource;
  @GET('/api-frontend/Order/CustomerOrders')
  Future<HttpResponse<OrdersResponse>> getOrders();
}
