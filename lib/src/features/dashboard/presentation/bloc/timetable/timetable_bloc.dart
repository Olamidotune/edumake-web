import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/timetable.dart/time_table_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/timetable/time_table_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/timetable/time_table_response.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_event.dart';
part 'timetable_state.dart';
part 'timetable_bloc.freezed.dart';

class TimetableBloc extends Bloc<TimetableEvent, TimetableState> {
  TimetableBloc() : super(const TimetableState()) {
    on<_FetchTimeTableByClass>(_fetchTimeTableByClass);
    on<_FetchTimetableByClassSuccessful>(_fetchTimeTableByClassSuccessful);
    on<_FetchTimetableByClassFailed>(_fetchTimeTableByClassFailed);
    on<_ErrorMessage>(_errorMessage);
  }

  void _fetchTimeTableByClass(
      _FetchTimeTableByClass event, Emitter<TimetableState> emit) async {
    if (state.fetchTimeTableStatus == FormzSubmissionStatus.inProgress) return;

    emit(
        state.copyWith(fetchTimeTableStatus: FormzSubmissionStatus.inProgress));

    try {
      final classTimeTable = await locator<TimeTableClient>()
          .fetchTimeTableByClass(await getAuthorization(),
              event.parentSchoolId ?? await getSchoolID(), event.classId);

      add(_FetchTimetableByClassSuccessful(classTimeTable));
    } catch (error, trace) {
      logError(error, trace);
      add(_FetchTimetableByClassFailed(error.toString()));
    }
  }

  void _fetchTimeTableByClassSuccessful(
      _FetchTimetableByClassSuccessful event, Emitter<TimetableState> emit) {
    emit(state.copyWith(
        fetchTimeTableStatus: FormzSubmissionStatus.success,
        fetchTimeTableResponse: event.fetchTimeTableResponse,
        timeTableDatum: event.fetchTimeTableResponse.data));
  }

  void _fetchTimeTableByClassFailed(
      _FetchTimetableByClassFailed event, Emitter<TimetableState> emit) {
    emit(
      state.copyWith(
        fetchTimeTableStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<TimetableState> emit) {
    // Implement the logic for handling error messages
  }
}
