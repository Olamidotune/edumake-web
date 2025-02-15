// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/api_response_message.dart';
import 'package:retrofit/http.dart';

part 'complaints_clients.g.dart';

@RestApi()
abstract class ComplaintsClients {
  factory ComplaintsClients(Dio dio, {String? baseUrl}) = _ComplaintsClients;

  @POST('/api/v1/par/complaint/{schoolId}')
  @FormUrlEncoded()
  Future<ApiResponseMessage> sendRequest(
    @Header('Authorization') String authorization,
    @Path('schoolId') String studentId,
  );
}
