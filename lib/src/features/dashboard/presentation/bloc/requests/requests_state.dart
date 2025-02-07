part of 'requests_bloc.dart';

@freezed
class RequestsState with _$RequestsState {
  const factory RequestsState({
    GetRequestModel? getRequestModel,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus getRequestStatus,
    String? selectedRequest,
    String? selectedRequestId,
    String? errorMessage,
  }) = _RequestsState;
}
