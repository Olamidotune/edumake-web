// ignore_for_file: use_super_parameters

part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(EmailFormz.pure()) EmailFormz email,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(PasswordConfirmFormz.pure()) PasswordConfirmFormz passwordConfirm,
    String? errorMessage,
    @Default(false) acceptTerms,
    AuthData? authData,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus signUpStatus,
  }) = _OnboardingState;
  const OnboardingState._();

  bool get isSignUpFormValid =>
      Formz.validate([email, password, passwordConfirm]);
}

//==============================================================================
// FORMZ
//==============================================================================
enum ValidationError { invalid, empty, short }

//==============================================================================
// FORMZ -  EMAIL
//==============================================================================

class EmailFormz extends FormzInput<String, ValidationError> {
  const EmailFormz.pure([String value = '']) : super.pure(value);
  const EmailFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (!EmailValidator.validate(value.trim())) {
      return ValidationError.invalid;
    }

    return null;
  }
}

//==============================================================================
// FORMZ -  Password
//==============================================================================

class PasswordFormz extends FormzInput<String, ValidationError> {
  const PasswordFormz.pure([String value = '']) : super.pure(value);
  const PasswordFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}

//==============================================================================
// FORMZ -  Password Confirm
//==============================================================================

class PasswordConfirmFormz extends FormzInput<String, ValidationError> {
  const PasswordConfirmFormz.pure([String value = '', this.password])
      : super.pure(value);
  const PasswordConfirmFormz.dirty([String value = '', this.password])
      : super.dirty(value);

  final String? password;

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value != password) {
      return ValidationError.invalid;
    }

    return null;
  }
}
