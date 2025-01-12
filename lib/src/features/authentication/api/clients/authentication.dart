import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/auth_data.dart';
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
}
