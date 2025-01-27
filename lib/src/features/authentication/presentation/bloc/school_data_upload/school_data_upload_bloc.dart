import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/school_data_upload.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/classes_model.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_data_upload_event.dart';
part 'school_data_upload_state.dart';
part 'school_data_upload_bloc.freezed.dart';

class SchoolDataUploadBloc
    extends Bloc<SchoolDataUploadEvent, SchoolDataUploadState> {
  SchoolDataUploadBloc() : super(const SchoolDataUploadState()) {
    on<_OnClassNameChanged>(_onClassNameChanged);
    on<_SetCsvClasses>(_onSetCsvClasses);
    on<_UploadClasses>(_onUploadClasses);
    on<_UploadClassesSuccess>(_onUploadClassesSuccess);
    on<_UploadClassesFailure>(_onUploadClassesFailure);
  }
  final List<TextEditingController> controllers = [];

  void _onClassNameChanged(
    _OnClassNameChanged event,
    Emitter<SchoolDataUploadState> emit,
  ) {
    // Extract the current list of manual classes
    final currentManualClasses = state.manualClasses.value.isNotEmpty
        ? state.manualClasses.value.split(',').map((e) => e.trim()).toList()
        : <String>[];

    // Add the new class input to the list
    final updatedManualClasses = [
      ...currentManualClasses,
      event.classes.trim(),
    ];

    // Emit the updated manualClasses state as a comma-separated string
    final classes = ClassesFormz.dirty(updatedManualClasses.join(','));
    emit(
      state.copyWith(
        manualClasses: classes.isValid ? classes : classes,
      ),
    );
  }

  void _onSetCsvClasses(
    _SetCsvClasses event,
    Emitter<SchoolDataUploadState> emit,
  ) {
    emit(state.copyWith(csvClasses: event.csvClasses));
  }

  void _onUploadClasses(
    _UploadClasses event,
    Emitter<SchoolDataUploadState> emit,
  ) async {
    if (state.classesUploadStatus == FormzSubmissionStatus.inProgress) return;

    try {
      // Use the provided class names directly (from the filtered list)
      final uniqueClasses = event.classes.toSet().toList();

      if (uniqueClasses.isEmpty) {
        add(const _UploadClassesFailure('No classes selected for upload'));
        return;
      }

      logInfo('Uploading classes: $uniqueClasses');

      emit(
        state.copyWith(
          classesUploadStatus: FormzSubmissionStatus.inProgress,
        ),
      );

      final classes = await locator<SchoolDataUpload>().addClasses(
        await getAuthorization(),
        await getSchoolID(),
        uniqueClasses,
      );

      add(_UploadClassesSuccess(classes));
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_UploadClassesFailure(error.response?.data['message'] as String?));
      } else {
        add(const _UploadClassesFailure('An unexpected error occurred'));
      }
    }
  }

  void _onUploadClassesSuccess(
    _UploadClassesSuccess event,
    Emitter<SchoolDataUploadState> emit,
  ) {
    emit(
      state.copyWith(
        classesUploadStatus: FormzSubmissionStatus.success,
        manualClasses: const ClassesFormz.pure(),
        csvClasses: [],
      ),
    );

    emit(
      state.copyWith(
        classesUploadStatus: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _onUploadClassesFailure(
    _UploadClassesFailure event,
    Emitter<SchoolDataUploadState> emit,
  ) {
    emit(
      state.copyWith(
        classesUploadStatus: FormzSubmissionStatus.failure,
        errorMessage: event.errorMessage,
      ),
    );
  }
}
