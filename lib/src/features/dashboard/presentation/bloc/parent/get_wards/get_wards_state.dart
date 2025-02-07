part of 'get_wards_bloc.dart';

@freezed
class GetWardsState with _$GetWardsState {
  const factory GetWardsState({
    SearchResponse? searchResponse,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus getWardStatus,
    String? selectedWard,
    String? errorMessage,
  }) = _GetWardsState;

  const GetWardsState._();
}
