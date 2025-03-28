// ignore_for_file: use_super_parameters

part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    SchoolModel? school,
    @Default(EmailFormz.pure()) EmailFormz email,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(PasswordConfirmFormz.pure()) PasswordConfirmFormz passwordConfirm,
    String? errorMessage,
    @Default(false) acceptTerms,
    SignupResponse? signupResponse,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus signInStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus signUpStatus,
    @Default(OTPFormz.pure()) OTPFormz otp,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus otpStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus resendOtpStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus changeTeacherPasswordStatus,
    @Default(ForgotPasswordFormz.pure()) ForgotPasswordFormz forgotPassword,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus createNewPasswordStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus forgotPasswordStatus,
    AuthData? authdata,
    @Default(false) bool initialized,
  }) = _AuthState;
  const AuthState._();

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

class OTPFormz extends FormzInput<String, ValidationError> {
  const OTPFormz.pure([String value = '']) : super.pure(value);
  const OTPFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty || int.tryParse(value) == null) {
      return ValidationError.empty;
    }

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}

class ForgotPasswordFormz extends FormzInput<String, ValidationError> {
  const ForgotPasswordFormz.pure([String value = '']) : super.pure(value);
  const ForgotPasswordFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (!EmailValidator.validate(value.trim())) {
      return ValidationError.invalid;
    }
    return null;
  }
}
