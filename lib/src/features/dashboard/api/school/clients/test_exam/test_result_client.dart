// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_resquests/test_result_request.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_response.dart';
import 'package:retrofit/http.dart';

part 'test_result_client.g.dart';

@RestApi()
abstract class TestResultClient {
  factory TestResultClient(Dio dio, {String baseUrl}) = _TestResultClient;

  @POST('/api/v1/sch/test/{schoolId}')
  @FormUrlEncoded()
  Future<TestResponse> addTestResult(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Body() TestResultRequest body,
  );
}
