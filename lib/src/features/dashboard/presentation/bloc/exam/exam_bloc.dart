import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/timetable/time_table_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/timetable/time_table_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/test_exam/test_result_client.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_event.dart';
part 'exam_state.dart';
part 'exam_bloc.freezed.dart';

class ExamBloc extends Bloc<ExamEvent, ExamState> {
  ExamBloc() : super(const ExamState()) {
    on<_FetchExamTimeTableByClass>(_fetchExamTimeTableByClass);
    on<_FetchExamTimeTableByClassSuccessful>(
        _fetchExamTimeTableByClassSuccessful);
    on<_FetchExamTimeTableByClassFailed>(_fetchExamTimeTableByClassFailed);
    on<_ErrorMessage>(_errorMessage);
  }

  void _fetchExamTimeTableByClass(
      _FetchExamTimeTableByClass event, Emitter<ExamState> emit) async {
    if (state.fetchExamTimetableStatus == FormzSubmissionStatus.inProgress)
      return;

    emit(state.copyWith(
        fetchExamTimetableStatus: FormzSubmissionStatus.inProgress));

    try {
      final classTimeTable = await locator<TestResultClient>()
          .fetchExamTimeTable(await getAuthorization(),
              event.parentSchoolId ?? await getSchoolID(), event.classId);

      add(_FetchExamTimeTableByClassSuccessful(classTimeTable));
    } catch (error, trace) {
      onError(error, trace);
      add(_FetchExamTimeTableByClassFailed(error.toString()));
    }
  }

  void _fetchExamTimeTableByClassSuccessful(
      _FetchExamTimeTableByClassSuccessful event, Emitter<ExamState> emit) {
    emit(state.copyWith(
        fetchExamTimetableStatus: FormzSubmissionStatus.success,
        fetchExamTimetableResponse: event.fetchTimeTableResponse,
        timeTableDatum: event.fetchTimeTableResponse.data));
  }

  void _fetchExamTimeTableByClassFailed(
      _FetchExamTimeTableByClassFailed event, Emitter<ExamState> emit) {
    emit(
      state.copyWith(
        fetchExamTimetableStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<ExamState> emit) {
    // Implement the logic for handling error messages
  }
}
