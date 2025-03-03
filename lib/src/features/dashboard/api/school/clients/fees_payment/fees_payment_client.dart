// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_request_body.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/fee_by_id_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/individual_student_fee_payment_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/response/response.dart';
import 'package:retrofit/http.dart';

part 'fees_payment_client.g.dart';

@RestApi()
abstract class FeesPaymentClient {
  factory FeesPaymentClient(Dio dio, {String baseUrl}) = _FeesPaymentClient;

  @POST('/api/v1/sch/fees/{schoolId}')
  @FormUrlEncoded()
  Future<FeesPaymentResponse> addFees(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Body() FeesPaymentRequestBody body,
  );

  @GET('/api/v1/sch/fees/all/{schoolId}')
  @FormUrlEncoded()
  Future<FeesResponse> fetchFees(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Query('studentId') String? studentId,
  );

  @GET('/api/v1/sch/fees/{feeId}')
  @FormUrlEncoded()
  Future<FeeByIdResponse> fetchFeesByID(
    @Header('Authorization') String authorization,
    @Path('feeId') String feeId,
  );

  @GET('api/v1/par/payment-history/{studentId}')
  @FormUrlEncoded()
  Future<IndividualStudentPaymentHistoryResponse> fetchPaymentHistoryForStudent(
    @Header('Authorization') String authorization,
    @Path('studentId') String studentId,
  );
}
