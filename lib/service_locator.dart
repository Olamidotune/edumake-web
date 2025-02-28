import 'package:dio/dio.dart';
import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/core/constants/pref_keys.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/authentication.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/csv_upload.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/school_data_upload.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/timetable.dart/time_table_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/wards_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/events/event_clients.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/school_mgt/get_school_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/subjects/subjects_clients.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/test_exam/test_result_client.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/services/response_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final dio = Dio(BaseOptions(headers: baseHeaders));

  if (kDebugMode) {
    dio.interceptors.add(ResponseLoggingInterceptor());
    locator
      ..registerFactory<AuthenticationClient>(
        () => AuthenticationClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerFactory<SchoolDataUpload>(
        () => SchoolDataUpload(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerFactory<GetSchoolDataClient>(
        () => GetSchoolDataClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerFactory<CsvUpload>(
        () => CsvUpload(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerFactory<WardsClient>(
        () => WardsClient(dio, baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? ''),
      )
      ..registerFactory<EventClients>(
        () => EventClients(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerFactory<TestResultClient>(
        () => TestResultClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerFactory<TimeTableClient>(
        () => TimeTableClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerFactory<SubjectsClients>(
        () => SubjectsClients(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      );
  } else {
    locator
      ..registerSingleton<AuthenticationClient>(
        AuthenticationClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerSingleton<SchoolDataUpload>(
        SchoolDataUpload(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerSingleton<GetSchoolDataClient>(
        GetSchoolDataClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerSingleton<CsvUpload>(
        CsvUpload(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerSingleton<WardsClient>(
        WardsClient(dio, baseUrl: dotenv.env[EnvKeys.apiBaseUrl]),
      )
      ..registerSingleton<EventClients>(
        EventClients(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerSingleton<TestResultClient>(
        TestResultClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerSingleton<TimeTableClient>(
        TimeTableClient(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      )
      ..registerSingleton<SubjectsClients>(
        SubjectsClients(
          dio,
          baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
        ),
      );
  }

  locator.registerSingleton<AuthServices>(AuthServices());
}
