import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';

Future<String> getAuthorization() async {
  return "Bearer ${await AuthServices().getToken() ?? "<none>"}";
}

Future<String> getSchoolID() async {
  return await AuthServices().getSchoolID() ?? '<none>';
}

String getErrorMessage(Object error) {
  if (error is DioError) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return 'Connection timeout.';
      case DioErrorType.receiveTimeout:
        return 'Receive timeout.';
      case DioErrorType.sendTimeout:
        return 'Send timeout.';
      case DioErrorType.badResponse:
        return 'Bad response.';
      case DioErrorType.cancel:
        return 'Request cancelled.';
      case DioErrorType.unknown:
        return 'Something went wrong.';
      case DioExceptionType.badCertificate:
        return 'Bad certificate.';

      case DioExceptionType.connectionError:
        return 'Connection error.';
    }
  }
  return error.toString();
}
