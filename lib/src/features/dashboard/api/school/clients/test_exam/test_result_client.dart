// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/exams/fetch_exam_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fetch_test_exams_response/fetch_test_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_requests/test_result_request.dart';
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

  @POST('/api/v1/sch/exam/{schoolId}')
  @FormUrlEncoded()
  Future<TestResponse> addExamResult(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Body() TestResultRequest body,
  );

  @GET('/api/v1/sch/test/all/{schoolId}')
  Future<FetchTestResponse> fetchTestResults(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Query('studentId') String studentId,
    @Query('classId') String classId,
    @Query('subjectId') String subjectId,
  );

  @GET('/api/v1/sch/exam/all/{schoolId}')
  Future<FetchExamResponse> fetchExamResults(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Query('studentId') String studentId,
    @Query('classId') String classId,
    @Query('subjectId') String subjectId,
  );
}
