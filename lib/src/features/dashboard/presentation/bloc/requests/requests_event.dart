part of 'requests_bloc.dart';

@freezed
class RequestsEvent with _$RequestsEvent {
  const factory RequestsEvent() = _RequestsEvent;
  const factory RequestsEvent.getRequest() = _GetRequest;
  const factory RequestsEvent.getRequestSuccessful(
    GetRequestModel getRequestModel,
  ) = _GetRequestSuccessful;
  const factory RequestsEvent.getRequestFailed(String? message) =
      _GetRequestFailed;
  const factory RequestsEvent.selectedRequest(String? selectedRequest) =
      _SelectedRequest;
  const factory RequestsEvent.selectedRequestId(String? selectedRequestId) =
      _SelectedRequestId;
  const factory RequestsEvent.errorMessage(String? message) = _ErrorMessage;
}
