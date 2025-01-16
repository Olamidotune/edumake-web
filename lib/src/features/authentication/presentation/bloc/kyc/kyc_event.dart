part of 'kyc_bloc.dart';

@freezed
class KycEvent with _$KycEvent {
  const factory KycEvent() = _KycEvent;
  const factory KycEvent.firstNameChanged(String firstName) = _FirstNameChanged;
  const factory KycEvent.lastNameChanged(String lastName) = _LastNameChanged;
  const factory KycEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;
  const factory KycEvent.ninChanged(String nin) = _NinChanged;
  const factory KycEvent.submitKyc() = _SubmitKyc;
  const factory KycEvent.resetKyc() = _ResetKyc;
  const factory KycEvent.submitKycSuccess(User user) = _SubmitKycSuccess;
  const factory KycEvent.submitKycFailure(String error) = _SubmitKycFailure;
  const factory KycEvent.init() = _Init;
}
