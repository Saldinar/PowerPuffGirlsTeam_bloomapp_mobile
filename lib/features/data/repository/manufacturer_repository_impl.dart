import 'dart:io';

import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/manufacturer/manufacturer_data_source.dart';

import 'package:amamini_client/features/data/mappers/manufacturer/manufacturer_mapper.dart';

import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_entity.dart';

import 'package:amamini_client/features/domain/repository/manufacturer_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ManufacturerRepository)
final class ManufacturerRepositoryImpl implements ManufacturerRepository {
  ManufacturerRepositoryImpl({
    required ManufacturerDataSource manufacturerDataSource,
  }) : _manufacturerDataSource = manufacturerDataSource;

  final ManufacturerDataSource _manufacturerDataSource;
  @override
  Future<Either<Failure, List<ManufacturerEntity>>>
      getAllManufacturers() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _manufacturerDataSource.getAllManufacturers();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(
          httpResponse.data
              .map((manufacturer) => manufacturer.toEntity())
              .toList(),
        );
      } else {
        return Left(
          ErrorHandler.handle(
            DioException(
              response: httpResponse.response,
              type: DioExceptionType.badResponse,
              requestOptions: httpResponse.response.requestOptions,
            ),
          ).failure,
        );
      }
    } on DioException catch (e) {
      final errorHandler = ErrorHandler.handle(e);
      return Left(errorHandler.failure);
    }
  }
}
