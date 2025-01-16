part of 'kyc_bloc.dart';

@freezed
class KycState with _$KycState {
  const factory KycState({
    User? user,
    @Default(FirstNameFormz.pure()) FirstNameFormz firstName,
    @Default(LastNameFormz.pure()) LastNameFormz lastName,
    @Default(PhoneNumberFormz.pure()) PhoneNumberFormz phoneNumber,
    @Default(NinFormz.pure()) NinFormz nin,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus kycStatus,
    String? errorMessage,
  }) = _KycState;
  const KycState._();
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

//==============================================================================
// FORMZ -  National Identification Number (NIN) or NIA Number
//==============================================================================

class NinFormz extends FormzInput<String, ValidationError> {
  const NinFormz.pure([String value = '']) : super.pure(value);
  const NinFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return ValidationError.empty;

    if (value.length < 11) return ValidationError.short;
    return null;
  }
}
