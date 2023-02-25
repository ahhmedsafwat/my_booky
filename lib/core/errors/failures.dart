import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;

  Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection took long time');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send took long time');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Data took long time');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.unknown:
        return ServerFailure('Unexpected Error please try again!');
      case DioErrorType.cancel:
        return ServerFailure('Request was canceld');
      case DioErrorType.connectionError:
        return ServerFailure('No Internet Connection');
      default:
        return ServerFailure('Opps There was an error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Rquest not Found, please try again!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try later');
    } else {
      return ServerFailure('Opps There was an error, please try again');
    }
  }
}
