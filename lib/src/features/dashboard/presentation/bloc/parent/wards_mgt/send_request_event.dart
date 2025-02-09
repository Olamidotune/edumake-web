part of 'send_request_bloc.dart';

@freezed
class SendRequestEvent with _$SendRequestEvent {
  const factory SendRequestEvent() = _SendRequestEvent;
  const factory SendRequestEvent.sendRequest(String classId) = _SendRequest;
  const factory SendRequestEvent.sendRequestSuccessful(
    GetWardRequestModel getRequestModel,
  ) = _SendRequestSuccessful;
  const factory SendRequestEvent.sendRequestFailed(String? message) =
      _SendRequestFailed;
  const factory SendRequestEvent.errorMessage(String? message) = _ErrorMessage;
}
