import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_school_data_model.dart';
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
  );
  @GET('/api/v1/sch/classes/')
  @FormUrlEncoded()
  Future<GetSchoolDataModel> getClassews(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
  );
}
