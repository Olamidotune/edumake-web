import 'dart:convert';

import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class CsvUploadService {
  final String? baseUrl = dotenv.env[EnvKeys.apiBaseUrl] ?? '';

//==============================================================================
//CLASS CSV UPLOAD
//==============================================================================

  Future<void> uploadSubjectCsvFile(
      PlatformFile file, BuildContext context) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();

    final url = '${baseUrl}api/v1/sch/subjects/csv/$schoolId';

    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));

      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      });

      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          file.path!,
          contentType: MediaType('text', 'csv'),
        ),
      );

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();
      logInfo('responseBody: $responseBody');

      final responseJson = jsonDecode(responseBody);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final successMessage = responseJson['message'];
        logInfo(responseBody);
        ToastService.toast(successMessage.toString());

        if (context.mounted) {
          // Check if context is still valid
          Navigator.of(context).pop(true);
        }
      } else {
        final errorMessage =
            responseJson['message'] ?? 'An unknown error occurred';
        ToastService.toast(
          errorMessage.toString(),
          ToastType.error,
        );
      }
    } catch (error, trace) {
      logError(error, trace);
      ToastService.toast(
        'Something went wrong.',
        ToastType.error,
      );
      rethrow;
    }
  }

//==============================================================================
//SUBJECT CSV UPLOAD
//==============================================================================

  Future<void> uploadClassCSVFile(
      PlatformFile file, BuildContext context) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();

    final url = '${baseUrl}api/v1/sch/classes/csv/$schoolId';

    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));

      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      });

      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          file.path!,
          contentType: MediaType('text', 'csv'),
        ),
      );

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();
      logInfo('responseBody: $responseBody');

      final responseJson = jsonDecode(responseBody);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final successMessage = responseJson['message'];
        logInfo(responseBody);
        ToastService.toast(successMessage.toString());

        if (context.mounted) {
          // Check if context is still valid
          Navigator.of(context).pop(true);
        }
      } else {
        final errorMessage =
            responseJson['message'] ?? 'An unknown error occurred';
        ToastService.toast(
          errorMessage.toString(),
          ToastType.error,
        );
      }
    } catch (error, trace) {
      logError(error, trace);
      ToastService.toast(
        'Something went wrong.',
        ToastType.error,
      );
      rethrow;
    }
  }

//==============================================================================
//STUDENT CSV UPLOAD
//==============================================================================
  Future<void> uploadStudentCsvFile(
      PlatformFile file, BuildContext context) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();

    final url = '${baseUrl}api/v1/sch/students/csv/$schoolId';

    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));

      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      });

      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          file.path!,
          contentType: MediaType('text', 'csv'),
        ),
      );

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();
      logInfo('responseBody: $responseBody');

      final responseJson = jsonDecode(responseBody);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final successMessage = responseJson['message'];
        logInfo(responseBody);
        ToastService.toast(successMessage.toString());

        if (context.mounted) {
          // Check if context is still valid
          Navigator.of(context).pop(true);
        }
      } else {
        final errorMessage =
            responseJson['message'] ?? 'An unknown error occurred';
        ToastService.toast(
          errorMessage.toString(),
          ToastType.error,
        );
      }
    } catch (error, trace) {
      logError(error, trace);
      ToastService.toast(
        'Something went wrong.',
        ToastType.error,
      );
      rethrow;
    }
  }
}
