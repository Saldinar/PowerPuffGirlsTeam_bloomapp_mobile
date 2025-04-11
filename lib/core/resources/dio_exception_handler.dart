import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:dio/dio.dart';

class ErrorHandler implements Exception {
  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleError(error);
    } else {
      failure = DataSource.defaultError.getFailure();
    }
  }

  late Failure failure;
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectionTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioException.connectionError:
      return DataSource.noInternetConnection.getFailure();
    case DioExceptionType.badResponse:
      return _handleBadResponse(error);
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();

    default:
      return _handleDefaultError(error);
  }
}

Failure _handleBadResponse(DioException exception) {
  final code = exception.response?.statusCode ?? ResponseCode.DEFAULT;
  switch (code) {
    case ResponseCode.UNAUTHORIZED:
      return DataSource.unauthorized.getFailure();
    case ResponseCode.FORBIDDEN:
      return DataSource.forbidden.getFailure();
    case ResponseCode.INTERNAL_SERVER_ERROR:
      return DataSource.internalServerError.getFailure();
    case ResponseCode.NOT_FOUND:
      return DataSource.notFound.getFailure();

    default:
      final message = _extractErrorMessage(exception.response?.data ?? exception.message.toString());
      return Failure(code, message);
  }
}

Failure _handleDefaultError(DioException error) {
  if (error.response?.statusCode == ResponseCode.NO_INTERNET_CONNECTION) {
    return DataSource.noInternetConnection.getFailure();
  } else {
    return DataSource.defaultError.getFailure();
  }
}

String _extractErrorMessage(dynamic data) {
  if (data is String) {
    return data;
  }
  var message = '';
  if (data is Map) {
    data.forEach((key, value) {
      if (value is List) {
        message += value.join('\n');
      } else if (value is String) {
        message += value;
      } else {
        message += value.toString();
      }
    });
  }
  return message;
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.success:
        return Failure(
          ResponseCode.SUCCESS,
          S.current.success,
        );
      case DataSource.noContent:
        return Failure(
          ResponseCode.NO_CONTENT,
          S.current.noContent,
        );
      case DataSource.badRequest:
        return Failure(
          ResponseCode.BAD_REQUEST,
          S.current.badRequestError,
        );
      case DataSource.forbidden:
        return Failure(
          ResponseCode.FORBIDDEN,
          S.current.forbiddenError,
        );
      case DataSource.unauthorized:
        return Failure(
          ResponseCode.UNAUTHORIZED,
          S.current.unauthorizedError,
        );
      case DataSource.notFound:
        return Failure(
          ResponseCode.NOT_FOUND,
          S.current.notFoundError,
        );
      case DataSource.internalServerError:
        return Failure(
          ResponseCode.INTERNAL_SERVER_ERROR,
          S.current.internalServerError,
        );
      case DataSource.connectionTimeout:
        return Failure(
          ResponseCode.CONNECT_TIMEOUT,
          S.current.timeoutError,
        );
      case DataSource.cancel:
        return Failure(
          ResponseCode.CANCEL,
          S.current.noiInternetError,
        );
      case DataSource.receiveTimeout:
        return Failure(
          ResponseCode.RECEIVE_TIMEOUT,
          S.current.timeoutError,
        );
      case DataSource.sendTimeout:
        return Failure(
          ResponseCode.SEND_TIMEOUT,
          S.current.timeoutError,
        );
      case DataSource.cacheError:
        return Failure(
          ResponseCode.CACHE_ERROR,
          S.current.cacheError,
        );
      case DataSource.noInternetConnection:
        return Failure(
          ResponseCode.NO_INTERNET_CONNECTION,
          S.current.noiInternetError,
        );
      case DataSource.defaultError:
        return Failure(
          ResponseCode.DEFAULT,
          S.current.defaultError,
        );
    }
  }
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTHORIZED = 401; // failure, user is not authorized
  static const int FORBIDDEN = 403; // failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECEIVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectionTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError
}
