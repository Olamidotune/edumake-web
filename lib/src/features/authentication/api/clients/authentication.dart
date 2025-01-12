import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/auth_data.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/verify_otp_model.dart';
import 'package:retrofit/http.dart';

part 'authentication.g.dart';

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) =
      _AuthenticationClient;

  @POST('/api/v1/auth/signup')
  @FormUrlEncoded()
  Future<AuthData> signUp(
    @Field('email') String email,
    @Field('password') String password,
    @Field('role') String role,
  );

  @POST('v1/auth/login')
  @FormUrlEncoded()
  Future<AuthData> signIn(
    @Field('email') String email,
    @Field('password') String password,
    @Field('device_os') String deviceOS, {
    @Query('with_biometrics') bool? withBiosmetrics,
  });

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
}
