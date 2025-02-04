part of 'get_school_data_bloc.dart';

@freezed
class GetSchoolDataState with _$GetSchoolDataState {
  const factory GetSchoolDataState({
    GetSchoolDataModel? getSchoolDataModel,
    List<Datum>? classesData,
    String? errorMessage,
    String? totalCursor,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus fetchClassesStatus,
    @Default([]) List<Datum> classes,
    @Default(false) bool isLoading,
    String? selectedClassName,
  }) = _GetSchoolDataState;

  const GetSchoolDataState._();
}
