import 'dart:io';

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/api_response_message.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/classes_model.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/subject_request.dart';
import 'package:retrofit/retrofit.dart';

part 'school_data_upload.g.dart';

@RestApi()
abstract class SchoolDataUpload {
  factory SchoolDataUpload(Dio dio, {String baseUrl}) = _SchoolDataUpload;

  @POST('/api/v1/sch/subjects/csv/{schoolId}')
  @MultiPart()
  Future<ApiResponseMessage> addSubjectCSV(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Part() File file,
  );

  @POST('/api/v1/sch/classes/{schoolId}')
  @FormUrlEncoded()
  Future<Classes> addClasses(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Field('classNames') List<String> classNames,
  );

  @POST('/api/v1/sch/subjects/{schoolId}')
  @FormUrlEncoded()
  Future<ApiResponseMessage> addSubjects(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Body() SubjectRequest subjectRequest,
  );
}
