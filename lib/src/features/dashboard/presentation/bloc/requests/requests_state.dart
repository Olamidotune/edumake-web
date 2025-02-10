part of 'requests_bloc.dart';

@freezed
class RequestsState with _$RequestsState {
  const factory RequestsState({
    // List<GetRequestDatum>? getRequestDatum,
    @Default([]) List<GetRequestDatum> getRequestDatum,
    GetRequestModel? getRequestModel,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus getRequestStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus acceptRequestStatus,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus rejectRequestStatus,
    String? selectedRequest,
    String? selectedRequestId,
    String? errorMessage,
  }) = _RequestsState;
}

extension RequestsStateX on RequestsState {
  List<GetRequestDatum> get pendingRequests {
    return getRequestModel?.data
            .where(
              (request) =>
                  request.status != 'rejected' && request.status != 'approved',
            )
            .toList() ??
        [];
  }
}
