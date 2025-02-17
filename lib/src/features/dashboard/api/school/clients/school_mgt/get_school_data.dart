import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_classes/get_students.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_subject_for_student/get_subject_for_student.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_school_data_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_response.dart';

import 'package:retrofit/http.dart';

part 'get_school_data.g.dart';

@RestApi()
abstract class GetSchoolDataClient {
  factory GetSchoolDataClient(Dio dio, {String baseUrl}) = _GetSchoolDataClient;

  @GET('/api/v1/sch/classes/{schoolId}')
  @FormUrlEncoded()
  Future<GetSchoolDataModel> getClasses(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Query('limit') int? limit,
    @Query('cursor') String? cursor,
  );

  @GET('/api/v1/sch/subjects/{schoolId}')
  @FormUrlEncoded()
  Future<GetSchoolDataModel> getSubjects(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Query('limit') int? limit,
    @Query('cursor') String? cursor,
  );

  @GET('/api/v1/sch/students/class/{classId}')
  @FormUrlEncoded()
  Future<GetStudentsModel> getStudentsByClass(
    @Header('Authorization') String authorization,
    @Path('classId') String classId,
  );

  @GET('/api/v1/par/subject/{classId}')
  @FormUrlEncoded()
  Future<GetSubjectForStudent> getSubjectForStudent(
    @Header('Authorization') String authorization,
    @Path('classId') String? classId,
  );

  //////////////////////////////////////////////////////////////////////////////
  ///SEARCH
  //////////////////////////////////////////////////////////////////////////////

  @GET('/api/v1/par/search/')
  Future<SearchResponse> search(
    @Header('Authorization') String authorization,
    @Query('query') String query,
  );
}
