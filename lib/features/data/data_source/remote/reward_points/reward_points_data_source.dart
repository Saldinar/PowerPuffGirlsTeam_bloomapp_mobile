import 'package:amamini_client/features/data/model/responses/reward_points/reward_points_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'reward_points_data_source.g.dart';

@RestApi()
@singleton
abstract class RewardPointsDataSource {
  @factoryMethod
  factory RewardPointsDataSource(Dio dio) = _RewardPointsDataSource;

  @GET('/api-frontend/Order/CustomerRewardPoints')
  Future<HttpResponse<RewardPointsResponse>> getRewardPoints();
}
