// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/ward_request/ward_request_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/request/get_request_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_response.dart';
import 'package:retrofit/http.dart';

part 'wards_client.g.dart';

@RestApi()
abstract class WardsClient {
  factory WardsClient(Dio dio, {String? baseUrl}) = _WardsClient;
  @POST('/api/v1/par/request/{studentId}')
  @FormUrlEncoded()
  Future<GetWardRequestModel> requestAccessToWard(
    @Header('Authorization') String authorization,
    @Path('studentId') String studentId,
  );

  @GET('/api/v1/par/wards')
  Future<SearchResponse> getWardsForParent(
    @Header('Authorization') String authorization,
  );

  @GET('/api/v1/sch/requests/{schoolId}')
  @FormUrlEncoded()
  Future<GetRequestModel> getAllRequests(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
  );
}
