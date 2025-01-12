import 'package:dio/dio.dart';
import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/core/constants/pref_keys.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/authentication.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final dio = Dio(BaseOptions(headers: baseHeaders));

  if (kDebugMode) {
    locator.registerFactory<AuthenticationClient>(
      () => AuthenticationClient(
        dio,
        baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
      ),
    );
  } else {
    locator.registerSingleton<AuthenticationClient>(
      AuthenticationClient(
        dio,
        baseUrl: dotenv.env[EnvKeys.apiBaseUrl] ?? '',
      ),
    );
  }
}
