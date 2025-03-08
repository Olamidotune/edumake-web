import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/subjects/subjects_clients.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/curriculum/fetch_curriculum.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curriculum_event.dart';
part 'curriculum_state.dart';
part 'curriculum_bloc.freezed.dart';

class CurriculumBloc extends Bloc<CurriculumEvent, CurriculumState> {
  CurriculumBloc() : super(const CurriculumState()) {
    on<_FetchCurriculum>(_fetchCurriculum);
    on<_FetchCurriculumsSuccess>(_fetchCurriculumsSuccess);
    on<_FetchCurriculumsFailed>(_fetchCurriculumFailed);
    on<_OnSelectedCurriculumNameChanged>(_onSelectedCurriculumNameChanged);
  }

  void _fetchCurriculum(
      _FetchCurriculum event, Emitter<CurriculumState> emit) async {
    if (state.fetchCurriculumStatus == FormzSubmissionStatus.inProgress) return;

    emit(state.copyWith(
        fetchCurriculumStatus: FormzSubmissionStatus.inProgress));

    try {
      final curriculum = await locator<SubjectsClients>().fetchCurriculum(
          await getAuthorization(),
          event.parentSchoolId ?? await getSchoolID(),
          event.subjectId);

      add(_FetchCurriculumsSuccess(curriculum));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError) {
        final message = error.response?.data?['message'];
        add(
          _FetchCurriculumsFailed(
            message?.toString() ?? 'An unexpected error occurred',
          ),
        );
      } else {
        add(
          const _FetchCurriculumsFailed(
            'An unexpected error occurred',
          ),
        );
      }
    }
  }

  void _fetchCurriculumsSuccess(
      _FetchCurriculumsSuccess event, Emitter<CurriculumState> emit) {
    emit(state.copyWith(
      errorMessage: null,
      fetchCurriculumStatus: FormzSubmissionStatus.success,
      fetchCurriculumResponse: event.fetchCurriculumModel,
      fetchCurriculumDatum: event.fetchCurriculumModel.data,
    ));
  }

  void _fetchCurriculumFailed(
      _FetchCurriculumsFailed event, Emitter<CurriculumState> emit) {
    emit(state.copyWith(
      errorMessage: null,
      fetchCurriculumStatus: FormzSubmissionStatus.failure,
    ));
  }

  void _onSelectedCurriculumNameChanged(
      _OnSelectedCurriculumNameChanged event, Emitter<CurriculumState> emit) {
    // TODO: Implement _onSelectedCurriculumNameChanged
  }
}
