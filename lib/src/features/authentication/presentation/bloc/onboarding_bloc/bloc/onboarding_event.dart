part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent() = _OnboardingEvent;
  const factory OnboardingEvent.emailChanged(String email) = _EmailChanged;
  const factory OnboardingEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory OnboardingEvent.onConfirmPasswordChanged(String password) =
      _ConfirmPasswordChanged;
  const factory OnboardingEvent.errorMessage(String? message) = _ErrorMessage;
  const factory OnboardingEvent.resetSignUpForm() = _ResetSignUpForm;
  const factory OnboardingEvent.acceptTermsChanged(acceptTerms) =
      _AcceptTermsChanged;
  const factory OnboardingEvent.signUp() = _SignUp;
  const factory OnboardingEvent.signUpSuccessful(AuthData authData) =
      _SignUpSuccessful;
  const factory OnboardingEvent.signUpFailed([String? message]) = _SignUpFailed;
  const factory OnboardingEvent.init() = _Init;
}
