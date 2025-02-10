part of 'get_wards_bloc.dart';

@freezed
class GetWardsEvent with _$GetWardsEvent {
  const factory GetWardsEvent() = _GetWardsEvent;
  const factory GetWardsEvent.init() = _Init;
  const factory GetWardsEvent.fetchWards() = _FetchWards;
  const factory GetWardsEvent.fetchWardsSuccessful(
    GetWardRequestModel getWardResponse,
  ) = _FetchWardsSuccessful;
  const factory GetWardsEvent.fetchWardsFailed(
    String? message,
  ) = _FetchWardsFailed;
  const factory GetWardsEvent.selectedWard(
    String? selectedWard,
  ) = _SelectedWard;
  const factory GetWardsEvent.errorMessage(String? message) = _ErrorMessage;
}
