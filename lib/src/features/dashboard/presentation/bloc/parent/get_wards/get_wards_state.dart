part of 'get_wards_bloc.dart';

@freezed
class GetWardsState with _$GetWardsState {
  const factory GetWardsState({
    GetWardRequestModel? getWardRequestModel,
    @Default([]) List<WardDatum> wardDatum,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus getWardStatus,
    String? selectedWard,
    String? errorMessage,
  }) = _GetWardsState;

  const GetWardsState._();
}
