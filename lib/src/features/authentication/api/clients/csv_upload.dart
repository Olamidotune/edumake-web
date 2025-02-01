// ignore_for_file: one_member_abstracts

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'csv_upload.g.dart';

@RestApi(baseUrl: 'https://edumake-backend.onrender.com/')
abstract class CsvUpload {
  factory CsvUpload(Dio dio, {String baseUrl}) = _CsvUpload;

  @POST('/api/v1/sch/subjects/csv/{schoolId}')
  @MultiPart()
  Future<String> uploadSubjectCSV(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Part() File file,
  );
}
