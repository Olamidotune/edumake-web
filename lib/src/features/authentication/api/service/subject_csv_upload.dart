import 'dart:convert';

import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class SubjectCsvUpload {
  final String? baseUrl = dotenv.env[EnvKeys.apiBaseUrl] ?? '';

  Future<void> uploadSubjectCsvFile(PlatformFile file) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();

    final url = '${baseUrl}api/v1/sch/subjects/csv/$schoolId';

    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));
      print('Final URL being called: $url');
      // Add authorization header
      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      });

      // Add file to request
      request.files.add(
        await http.MultipartFile.fromPath(
          'file',
          file.path!,
          contentType: MediaType('text', 'csv'), // Explicitly set CSV MIME type
        ),
      );

      // Send request
      final response = await request.send();

      final responseBody = await response.stream.bytesToString();
      logInfo('responseBody: $responseBody');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseBody = await response.stream.bytesToString();
        logInfo(responseBody);
        ToastService.toast('CSV uploaded successfully');
      } else {
        final responseJson = jsonDecode(responseBody);
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
