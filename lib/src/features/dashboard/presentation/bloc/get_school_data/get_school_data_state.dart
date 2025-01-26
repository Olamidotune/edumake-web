part of 'get_school_data_bloc.dart';

@freezed
class GetSchoolDataState with _$GetSchoolDataState {
  const factory GetSchoolDataState({
    GetSchoolDataModel? getSchoolDataModel,
    List<Datum>? classesData,
    String? errorMessage,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchClassesStatus,
  }) = _GetSchoolDataState;

  const GetSchoolDataState._();
}
