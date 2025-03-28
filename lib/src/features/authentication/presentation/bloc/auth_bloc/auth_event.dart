part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent() = _AuthEvent;
  const factory AuthEvent.emailChanged(String email) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = _PasswordChanged;
  const factory AuthEvent.onConfirmPasswordChanged(String password) =
      _ConfirmPasswordChanged;
  const factory AuthEvent.errorMessage(String? message) = _ErrorMessage;
  const factory AuthEvent.resetSignUpForm() = _ResetSignUpForm;
  const factory AuthEvent.acceptTermsChanged(acceptTerms) = _AcceptTermsChanged;
  const factory AuthEvent.signUp() = _SignUp;
  const factory AuthEvent.signIn() = _SignIn;
  const factory AuthEvent.signUpSuccessful(SignupResponse signupResponse) =
      _SignUpSuccessful;
  const factory AuthEvent.signInSuccessful(AuthData authData) =
      _SignInSuccessful;
  const factory AuthEvent.signInFailed([String? message]) = _SignInFailed;
  const factory AuthEvent.signUpFailed([String? message]) = _SignUpFailed;
  const factory AuthEvent.otpChanged(String otp) = _OtpChanged;
  const factory AuthEvent.verifyOtp([String? otp]) = _VerifyOtp;
  const factory AuthEvent.verifyOtpSuccessful() = _VerifyOtpSuccessful;
  const factory AuthEvent.verifyOtpFailed([String? message]) = _VerifyOtpFailed;
  const factory AuthEvent.resendOtp() = _ResendOtp;
  const factory AuthEvent.forgotPassword(String email) = _ForgotPassword;
  const factory AuthEvent.forgotPasswordSuccessful() =
      _ForgotPasswordSuccessful;
  const factory AuthEvent.forgotPasswordFailed([String? message]) =
      _ForgotPasswordFailed;
  const factory AuthEvent.createNewPassword(String password) =
      _CreateNewPassword;
  const factory AuthEvent.createNewPasswordSuccessful(String password) =
      _CreateNewPasswordSuccessful;
  const factory AuthEvent.changeTeachersPassword() = _ChangeTeachersPassword;
  const factory AuthEvent.changeTeachersPasswordSuccessful(
    SignupResponse signUpResponse,
  ) = _ChangeTeachersPasswordSuccessful;
  const factory AuthEvent.changeTeachersPasswordFailed(String? message) =
      _ChangeTeachersPasswordFailed;
  const factory AuthEvent.init() = _Init;
}
