import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/get_subject_for_student/get_subject_for_student.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/curriculum/fetch_curriculum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_subject_for_class/fetch_class_subjects.dart';
import 'package:retrofit/http.dart';

part 'subjects_clients.g.dart';

@RestApi()
abstract class SubjectsClients {
  factory SubjectsClients(Dio dio, {String baseUrl}) = _SubjectsClients;

  @GET('/api/v1/par/subject/{studentId}')
  @FormUrlEncoded()
  Future<GetSubjectForStudent> getSubjectForStudent(
    @Header('Authorization') String authorization,
    @Path('studentId') String? studentId,
  );

  @GET('/api/v1/sch/subjects/class/{classId}')
  @FormUrlEncoded()
  Future<FetchClassSubjects> fetchClassSubjects(
    @Header('Authorization') String authorization,
    @Path('classId') String? classId,
  );

  @GET('/api/v1/sch/curriculum/all/{schoolId}')
  Future<FetchCurriculum> fetchCurriculum(
    @Header('Authorization') String authorization,
    @Path('schoolId') String? schoolId,
    @Query('subjectId') String? subjectId,
  );
}
