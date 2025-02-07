part of 'ward_mgt_bloc.dart';

@freezed
class WardMgtState with _$WardMgtState {
  const factory WardMgtState({
    GetRequestModel? getRequestModel,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus requestAccessToWardStatus,
    String? errorMessage,
  }) = _WardMgtState;
}
