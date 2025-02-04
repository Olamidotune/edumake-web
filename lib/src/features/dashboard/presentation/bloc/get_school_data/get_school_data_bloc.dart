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
    on<_FetchClasses>(_fetchPaginatedClasses);
    on<_FetchClassesSuccess>(_fetchClassesSuccess);
    on<_FetchClassesFailed>(_fetchClassesFailed);
    on<_OnSelectedClassNameChanged>(_onSelectedClassNameChanged);
    on<_ErrorMessage>(_errorMessage);

    add(const _Init());
  }

  void _init(_Init event, Emitter<GetSchoolDataState> emit) async {
    try {
      final result = await locator<GetSchoolDataClient>().getClasses(
        await getAuthorization(),
        await getSchoolID(),
        1000,
        null,
      );
      add(_FetchClassesSuccess(
        result,
      ));
    } catch (error, trace) {
      onError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_FetchClassesFailed(error.response?.data['message'] as String?));
      } else {
        add(const _FetchClassesFailed('An unexpected error occurred'));
      }
    }
  }

  void _fetchPaginatedClasses(
    _FetchClasses event,
    Emitter<GetSchoolDataState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final result = await locator<GetSchoolDataClient>().getClasses(
        await getAuthorization(),
        await getSchoolID(),
        10,
        state.totalCursor, // Use the current cursor from the state
      );

      if (result.data.isNotEmpty) {
        // Append new data to the existing list
        final updatedClasses = List<Datum>.from(state.classes)
          ..addAll(result.data);

        emit(
          state.copyWith(
            classes: updatedClasses,
            totalCursor: result.cursor, // Update the cursor for the next fetch
            fetchClassesStatus: FormzSubmissionStatus.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            fetchClassesStatus: FormzSubmissionStatus.success,
          ),
        );
      }
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
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.success,
        getSchoolDataModel: event.getSchoolDataModel,
        classesData: event.getSchoolDataModel.data,
      ),
    );
  }

  void _onSelectedClassNameChanged(
    _OnSelectedClassNameChanged event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(state.copyWith(selectedClassName: event.classNameKey));
  }

  void _fetchClassesFailed(
    _FetchClassesFailed event,
    Emitter<GetSchoolDataState> emit,
  ) {
    emit(
      state.copyWith(
        fetchClassesStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message ?? 'An error occurred',
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<GetSchoolDataState> emit) {
    emit(
      state.copyWith(
        errorMessage: event.message,
      ),
    );
  }
}
