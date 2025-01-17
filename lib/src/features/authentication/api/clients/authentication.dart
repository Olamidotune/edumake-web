import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/auth_data.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/sign_up_response.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/verify_otp_model.dart';
import 'package:retrofit/http.dart';

part 'authentication.g.dart';

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) =
      _AuthenticationClient;

  @POST('/api/v1/auth/signup')
  @FormUrlEncoded()
  Future<SignupResponse> signUp(
    @Field('email') String email,
    @Field('password') String password,
    @Field('role') String role,
  );

  @POST('/api/v1/auth/login')
  @FormUrlEncoded()
  Future<AuthData> signIn(
    @Field('email') String email,
    @Field('password') String password,
  );

  @POST('/api/v1/auth/verify')
  @FormUrlEncoded()
  Future<VerifyOtpModel> verifyOTP(
    @Field('otp') String otp,
  );

  @POST('/api/v1/auth/resend-otp')
  @FormUrlEncoded()
  Future<void> resendOTP(
    @Field('email') String email,
  );

  @POST('/api/v1/auth/resend-otp')
  @FormUrlEncoded()
  Future<void> forgotPassword(
    @Field('email') String email,
  );

  @POST('/api/v1/auth/reset-password')
  @FormUrlEncoded()
  Future<SignupResponse> createNewPassword(
    @Field('otp') String otp,
    @Field('password') String password,
  );

  @PUT('/api/v1/auth/parents/kyc')
  @FormUrlEncoded()
  Future<SignupResponse> submitKYC(
    @Header('Authorization') String authorization,
    @Field('firstName') String firstName,
    @Field('lastName') String lastName,
    @Field('phoneNumber') String phoneNumber,
    @Field('idNumber') String nin,
  );
}
