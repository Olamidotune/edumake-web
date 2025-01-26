import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/classes_model.dart';
import 'package:retrofit/http.dart';

part 'school_data_upload.g.dart';

@RestApi()
abstract class SchoolDataUpload {
  factory SchoolDataUpload(Dio dio, {String baseUrl}) = _SchoolDataUpload;

  @POST('/api/v1/sch/add-classes/{schoolId}')
  @FormUrlEncoded()
  Future<Classes> addClasses(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Field('classNames') List<String> classNames,
  );

  @POST('/api/v1/sch/add-subjects/:schoolId')
  @FormUrlEncoded()
  Future<void> addSubjects(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Field('classes') List<String> classes,
    @Field('name') String name,
    @Field('note') String note,
  );

  @POST('/api/v1/sch/add-students/:schoolId')
  @FormUrlEncoded()
  Future<void> addStudents(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Field('students') List<String> students,
    @Field('name') String name,
    @Field('classId') String classId,
  );

  @POST('/api/v1/sch/add-teacher/:schoolId')
  @FormUrlEncoded()
  Future<void> addTeacher(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Field('name') String name,
    @Field('email') String email,
    @Field('note') String note,
    @Field('classes') List<String> classes,
    @Field('subjects') List<String> subjects,
    @Field('teacherImage') String teacherImage,
  );
}
