import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

void logMessage(String message) {}

void logError(Object error, StackTrace? trace, {bool crashlytics = true}) {
  logger.e('An Error Occurred', error: error, stackTrace: trace);

  if (error is DioError) {
    logger.e(error.response?.data);
  }
}

void logInfo(dynamic message) {
  logger.i(message);
}
