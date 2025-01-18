part of 'school_kyc_bloc.dart';

@freezed
class SchoolKycState with _$SchoolKycState {
  const factory SchoolKycState({
    @Default(FirstNameFormz.pure()) FirstNameFormz firstName,
    @Default(LastNameFormz.pure()) LastNameFormz lastName,
    @Default(PhoneNumberFormz.pure()) PhoneNumberFormz phoneNumber,
    @Default(SchooolEmailFormz.pure()) SchooolEmailFormz schoolEmail,
    String? schoolType,
    @Default(SchoolAddressFormz.pure()) SchoolAddressFormz schoolAddress,
    @Default(SchoolNameFormz.pure()) SchoolNameFormz schoolName,
    String? classNumberRange,
    String? studentNumberRange,
    String? teacherNumberRange,
    String? errorMessage,
    SignupResponse? signupResponse,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus schoolKycStatus,
  }) = _SchoolKycState;

  const SchoolKycState._();
}

//==============================================================================
// FORMZ -  First Name
//==============================================================================

class FirstNameFormz extends FormzInput<String, ValidationError> {
  const FirstNameFormz.pure([String value = '']) : super.pure(value);
  const FirstNameFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}

//==============================================================================
// FORMZ -  Last Name
//==============================================================================

class LastNameFormz extends FormzInput<String, ValidationError> {
  const LastNameFormz.pure([String value = '']) : super.pure(value);
  const LastNameFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}

//==============================================================================
// FORMZ -  Phone Number
//==============================================================================

class PhoneNumberFormz extends FormzInput<String, ValidationError> {
  const PhoneNumberFormz.pure([String value = '']) : super.pure(value);
  const PhoneNumberFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 11) return ValidationError.short;
    return null;
  }
}

enum ValidationError { invalid, empty, short }

//==============================================================================
// FORMZ -  EMAIL
//==============================================================================

class SchooolEmailFormz extends FormzInput<String, ValidationError> {
  const SchooolEmailFormz.pure([String value = '']) : super.pure(value);
  const SchooolEmailFormz.dirty([String value = '']) : super.pure(value);

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
// FORMZ -  School Address
//==============================================================================

class SchoolAddressFormz extends FormzInput<String, ValidationError> {
  const SchoolAddressFormz.pure([String value = '']) : super.pure(value);
  const SchoolAddressFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}

//==============================================================================
// FORMZ -  School Name
//==============================================================================

class SchoolNameFormz extends FormzInput<String, ValidationError> {
  const SchoolNameFormz.pure([String value = '']) : super.pure(value);
  const SchoolNameFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 3) return ValidationError.short;

    return null;
  }
}
