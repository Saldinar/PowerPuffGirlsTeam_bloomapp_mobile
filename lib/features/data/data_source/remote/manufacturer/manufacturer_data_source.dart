import 'package:amamini_client/features/data/model/responses/manufacturer/manufacturer_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'manufacturer_data_source.g.dart';

@RestApi()
@singleton
abstract class ManufacturerDataSource {
  @factoryMethod
  factory ManufacturerDataSource(Dio dio) = _ManufacturerDataSource;
  @GET('/api-frontend/Catalog/ManufacturerAll')
  Future<HttpResponse<List<ManufacturerResponse>>> getAllManufacturers();
}
