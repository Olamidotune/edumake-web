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
  const factory AuthEvent.signUpSuccessful(AuthData authData) =
      _SignUpSuccessful;
  const factory AuthEvent.signUpFailed([String? message]) = _SignUpFailed;
  const factory AuthEvent.init() = _Init;
}
