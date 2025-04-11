import 'package:amamini_client/core/constants/network_constants.dart';
import 'package:amamini_client/core/dio/api_interceptor.dart';
import 'package:amamini_client/features/domain/repository/user_local_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioModule {
  @Named('Unauthorized')
  @singleton
  Dio getUnauthorizedDioClient() {
    final dioClient = _dioClient();
    dioClient.interceptors.addAll([
      UnauthorizedRequestInterceptor(),
    ]);

    if (kDebugMode) {
      _prettyDioLogger(dioClient);
    }

    return dioClient;
  }

  @singleton
  Dio getAuthorizedDioClient(UserLocalRepository tokenRepository) {
    final dioClient = _dioClient();
    dioClient.interceptors.addAll([
      AuthorizedRequestInterceptor(tokenRepository),
    ]);

    if (kDebugMode) {
      _prettyDioLogger(dioClient);
    }

    return dioClient;
  }

  Dio _dioClient() {
    final baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: requestTimeOut,
      receiveTimeout: requestTimeOut,
    );
    return Dio(baseOptions);
  }

  void _prettyDioLogger(Dio dioClient) {
    dioClient.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
      ),
    );
  }
}
