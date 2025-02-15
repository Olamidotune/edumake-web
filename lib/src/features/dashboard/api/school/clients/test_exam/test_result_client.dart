// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_result_model.dart';
import 'package:retrofit/http.dart';

part 'test_result_client.g.dart';

@RestApi()
abstract class TestResultClient {
  factory TestResultClient(Dio dio, {String baseUrl}) = _TestResultClient;

  @POST('/api/v1/sch/test/{schoolId}')
  Future<TestResult> addTestResult(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Body() Map<String, dynamic> body,
  );
}
