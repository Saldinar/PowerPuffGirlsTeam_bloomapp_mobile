import 'dart:developer';
import 'dart:io';
import 'package:bloom/domain/repository/user_local_repository.dart';
import 'package:dio/dio.dart';

const _baseHeaders = {
  'contentType': 'application/json',
  'charset': 'utf-8',
  'accept': '*/*',
};

class UnauthorizedRequestInterceptor extends QueuedInterceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll(_baseHeaders);
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}

class AuthorizedRequestInterceptor extends UnauthorizedRequestInterceptor {
  AuthorizedRequestInterceptor(this._tokenRepository);

  final UserLocalRepository _tokenRepository;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      options.headers[HttpHeaders.authorizationHeader] =
          await _tokenRepository.getBearerToken();
      super.onRequest(options, handler);
    } on DioException catch (e) {
      handler.reject(e);
    } on Object catch (e) {
      log(e.toString());
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      super.onError(err, handler);
    } else {
      super.onError(err, handler);
    }
  }
}
