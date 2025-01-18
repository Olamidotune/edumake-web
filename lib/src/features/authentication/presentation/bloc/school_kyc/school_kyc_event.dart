part of 'school_kyc_bloc.dart';

@freezed
class SchoolKycEvent with _$SchoolKycEvent {
  const factory SchoolKycEvent() = _SchoolKycEvent;

  const factory SchoolKycEvent.initial() = _SchoolKycEventInitial;
  const factory SchoolKycEvent.onschoolNameChanged(String schoolName) =
      _OnSchoolNameChanged;
  const factory SchoolKycEvent.onFirstNameChanged(String firstName) =
      _OnFirstNameChanged;
  const factory SchoolKycEvent.onLastNameChanged(String lastName) =
      _OnLastNameChanged;
  const factory SchoolKycEvent.onPhoneNumberChanged(String phoneNumber) =
      _OnPhoneNumberChanged;
  const factory SchoolKycEvent.onSchoolEmailChanged(String schoolEmail) =
      _OnSchoolEmailChanged;
  const factory SchoolKycEvent.onSchoolTypeChanged(String schoolType) =
      _OnSchoolTypeChanged;
  const factory SchoolKycEvent.onSchoolAddressChanged(String schoolAddress) =
      _OnSchoolAddressChanged;
  const factory SchoolKycEvent.onClassNumberRangeChanged(
    String classNumberRange,
  ) = _OnClassNumberRangeChanged;
  const factory SchoolKycEvent.onStudentNumberRangeChanged(
    String studentNumberRange,
  ) = _OnStudentNumberRangeChanged;
  const factory SchoolKycEvent.onTeacherNumberRangeChanged(
    String teacherNumberRange,
  ) = _OnTeacherNumberRangeChanged;
  const factory SchoolKycEvent.submitSchoolKyc() = _SubmitSchoolKyc;
  const factory SchoolKycEvent.resetSchoolKyc() = _ResetSchoolKyc;
  const factory SchoolKycEvent.submitSchoolKycSuccess(
    SignupResponse schoolSignupResponse,
  ) = _SubmitSchoolKycSuccess;
  const factory SchoolKycEvent.submitSchoolKycFailure(String error) =
      _SubmitSchoolKycFailure;

  const factory SchoolKycEvent.errorMessage(String errorMessage) =
      _ErrorMessage;
}
