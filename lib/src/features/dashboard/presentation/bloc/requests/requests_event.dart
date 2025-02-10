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
  const factory RequestsEvent.acceptRequest(String selectedRequestId) =
      _AcceptRequest;
  const factory RequestsEvent.acceptRequestSuccessful(
    GetRequestModel getRequestModel,
  ) = _AcceptRequestSuccessful;
  const factory RequestsEvent.acceptRequestFailed(
    String message,
  ) = _AcceptRequestFailed;
  const factory RequestsEvent.rejectRequest(
    String selectedRequestId,
    String rejectionReason,
  ) = _RejectRequest;
  const factory RequestsEvent.rejectRequestSuccessful(
    GetRequestModel getRequestModel,
  ) = _RejectRequestSuccessful;
  const factory RequestsEvent.rejectRequestFailed(
    String message,
  ) = _RejectRequestFailed;
  const factory RequestsEvent.requestStatusChanged(String requestId) =
      _RequestStatusChanged;
  const factory RequestsEvent.errorMessage(String? message) = _ErrorMessage;
}
