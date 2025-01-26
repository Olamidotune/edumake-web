import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/get_school_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/get_school_data_model.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_school_data_event.dart';
part 'get_school_data_state.dart';
part 'get_school_data_bloc.freezed.dart';

class GetSchoolDataBloc extends Bloc<GetSchoolDataEvent, GetSchoolDataState> {
  GetSchoolDataBloc() : super(const GetSchoolDataState()) {
    on<_Init>(_init);
    on<_FetchClasses>(_fetchClasses);
    on<_FetchClassesSuccess>(_fetchClassesSuccess);
    on<_FetchClassesFailed>(_fetchClassesFailed);
    on<_ErrorMessage>(_errorMessage);

    add(const _Init());
  }

  void _init(_Init event, Emitter<GetSchoolDataState> emit) {
    add(const _FetchClasses());
  }

  void _fetchClasses(
    _FetchClasses event,
    Emitter<GetSchoolDataState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.inProgress,
      ),
    );

//come back to set timeout for token

    try {
      final result = await locator<GetSchoolDataClient>()
          .getClasses(await getAuthorization(), await getSchoolID());
      add(_FetchClassesSuccess(result));
    } catch (error, trace) {
      onError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_FetchClassesFailed(error.response?.data['message'] as String?));
      } else {
        add(const _FetchClassesFailed('An unexpected error occurred'));
      }
    }
  }

  void _fetchClassesSuccess(
    _FetchClassesSuccess event,
    Emitter<GetSchoolDataState> emit,
  ) {
    debugPrint('This is the data: ${event.getSchoolDataModel.data.first.name}');
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.success,
        getSchoolDataModel: event.getSchoolDataModel,
        classesData: event.getSchoolDataModel.data,
      ),
    );
  }

  void _fetchClassesFailed(
    _FetchClassesFailed event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred'));
  }

  void _errorMessage(_ErrorMessage event, Emitter<GetSchoolDataState> emit) {
    emit(
      state.copyWith(
        errorMessage: event.message,
      ),
    );
  }
}
