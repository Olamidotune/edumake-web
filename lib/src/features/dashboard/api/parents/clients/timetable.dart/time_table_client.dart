// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/timetable/time_table_response.dart';
import 'package:retrofit/http.dart';

part 'time_table_client.g.dart';

@RestApi()
abstract class TimeTableClient {
  factory TimeTableClient(Dio dio, {String? baseUrl}) = _TimeTableClient;
  @GET('/api/v1/sch/tt/class/all/{schoolId}')
  @FormUrlEncoded()
  Future<FetchTimeTableResponse> fetchTimeTableByClass(
      @Header('Authorization') String authorization,
      @Path('schoolId') String schoolId,
      @Query('classId') String classId);
}
