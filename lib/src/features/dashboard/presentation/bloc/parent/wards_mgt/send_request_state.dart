part of 'send_request_bloc.dart';

@freezed
class SendRequestState with _$SendRequestState {
  const factory SendRequestState({
    GetWardRequestModel? getWardRequestModel,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus requestAccessToWardStatus,
    String? errorMessage,
  }) = _SendRequestState;
}
