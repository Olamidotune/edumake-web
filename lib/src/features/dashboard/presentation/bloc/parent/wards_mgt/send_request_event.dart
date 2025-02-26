part of 'send_request_bloc.dart';

@freezed
class SendRequestEvent with _$SendRequestEvent {
  const factory SendRequestEvent() = _SendRequestEvent;
  const factory SendRequestEvent.sendRequest(
      String classId, String relationship) = _SendRequest;
  const factory SendRequestEvent.sendRequestSuccessful(
    SendRequestModel sendRequestModel,
  ) = _SendRequestSuccessful;
  const factory SendRequestEvent.sendRequestFailed(String? message) =
      _SendRequestFailed;
  const factory SendRequestEvent.errorMessage(String? message) = _ErrorMessage;
}
