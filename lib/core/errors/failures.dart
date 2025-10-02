import 'package:dio/dio.dart';

abstract class Failure {
  Failure(this.errorMessage);

  final String errorMessage;
}

class ServerFalure extends Failure {
  ServerFalure(super.errorMessage);

  factory ServerFalure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFalure('Connection timeout with server');

      case DioExceptionType.sendTimeout:
        return ServerFalure('Send timeout with server');

      case DioExceptionType.receiveTimeout:
        return ServerFalure('Recive timeout with server');

      case DioExceptionType.badCertificate:
        return ServerFalure('Bad certificate from server');

      case DioExceptionType.badResponse:
        return ServerFalure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response,
        );

      case DioExceptionType.cancel:
        return ServerFalure('Request was cancelled');

      case DioExceptionType.connectionError:
        return ServerFalure('Connection error with server');

      case DioExceptionType.unknown:
        if (dioException.message != null &&
            dioException.message!.contains('SocketException')) {
          return ServerFalure('No Internet connection');
        }

        return ServerFalure('Unexpected error, please try again later');
    }
  }

  factory ServerFalure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFalure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFalure('Request not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFalure('Internal server error, please try again later');
    } else {
      return ServerFalure('Unexpected error occurred, please try again');
    }
  }
}
