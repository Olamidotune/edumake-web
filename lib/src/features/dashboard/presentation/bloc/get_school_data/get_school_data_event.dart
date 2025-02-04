part of 'get_school_data_bloc.dart';

@freezed
class GetSchoolDataEvent with _$GetSchoolDataEvent {
  const factory GetSchoolDataEvent() = _GetSchoolDataEvent;
  const factory GetSchoolDataEvent.init() = _Init;
  const factory GetSchoolDataEvent.fetchPaginatedClasses() = _FetchClasses;
  const factory GetSchoolDataEvent.fetchClassesSuccess(
    GetSchoolDataModel getSchoolDataModel,
  ) = _FetchClassesSuccess;
  const factory GetSchoolDataEvent.fetchClassesFailed(String? message) =
      _FetchClassesFailed;
  const factory GetSchoolDataEvent.onSelectedClassNameChanged(
    String? classNameKey,
  ) = _OnSelectedClassNameChanged;
  const factory GetSchoolDataEvent.errorMessage(String? message) =
      _ErrorMessage;
}
