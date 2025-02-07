part of 'ward_mgt_bloc.dart';

@freezed
class WardMgtEvent with _$WardMgtEvent {
  const factory WardMgtEvent() = _WardMgtEvent;
  const factory WardMgtEvent.getRequest(String classId) = _GetRequest;
  const factory WardMgtEvent.getRequestSuccessful(
    GetRequestModel getRequestModel,
  ) = _GetRequestSuccessful;
  const factory WardMgtEvent.getRequestFailed(String? message) =
      _GetRequestFailed;
  const factory WardMgtEvent.errorMessage(String? message) = _ErrorMessage;
}
