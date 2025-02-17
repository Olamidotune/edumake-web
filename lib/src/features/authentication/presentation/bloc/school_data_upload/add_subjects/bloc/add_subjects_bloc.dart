import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/school_data_upload.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/subject.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/subject_request.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_subjects_event.dart';
part 'add_subjects_state.dart';
part 'add_subjects_bloc.freezed.dart';

class AddSubjectsBloc extends Bloc<AddSubjectsEvent, AddSubjectsState> {
  AddSubjectsBloc() : super(const AddSubjectsState()) {
    on<_OnNoteFieldChanged>(_onNoteFieldChanged);
    on<_OnSubjectFieldChanged>(_onSubjectFieldChanged);
    on<_SubmitSubjects>(_submitSubjects);
    on<_SubmitSubjectSuccessful>(_submitSubjectsSuccessful);
    on<_SubmitSubjectFailed>(_submitSubjectFailed);
    on<_SubmitSubjectCSV>(_submitSubjectCSV);
    on<_SubmitSubjectCSVSuccessful>(_submitSubjectCSVSuccessful);
    on<_SubmitSubjectCSVFailed>(_submitSubjectCSVFailed);
    on<_ErrorMessage>(_errorMessage);
  }

  void _onNoteFieldChanged(
    _OnNoteFieldChanged event,
    Emitter<AddSubjectsState> emit,
  ) {
    final notes = NoteFormz.dirty(event.note);
    emit(
      state.copyWith(
        note: notes, // Update only the note field
      ),
    );
  }

  void _onSubjectFieldChanged(
    _OnSubjectFieldChanged event,
    Emitter<AddSubjectsState> emit,
  ) {
    final subjects = SubjectFormz.dirty(event.subject);
    emit(
      state.copyWith(
        subject: subjects, // Update only the subject field
      ),
    );
  }

  void _submitSubjects(
    _SubmitSubjects event,
    Emitter<AddSubjectsState> emit,
  ) async {
    if (state.subjectUploadStatus == FormzSubmissionStatus.inProgress) return;

    try {
      final subjects = event.subjects
          .map(
            (subject) => Subject(
              classes: subject.classes,
              name: subject.name,
              note: subject.note,
            ),
          )
          .toList();

      if (subjects.isEmpty) {
        add(const _SubmitSubjectFailed('No subjects selected for upload'));
        return;
      }
      emit(
        state.copyWith(
          subjectUploadStatus: FormzSubmissionStatus.inProgress,
        ),
      );
      await locator<SchoolDataUpload>().addSubjects(
        await getAuthorization(),
        await getSchoolID(),
        //come add the class
        SubjectRequest(subjects: subjects),
      );

      add(const _SubmitSubjectSuccessful());
    } catch (error) {
      if (error is DioError && error.response?.data['message'] != null) {
        add(_SubmitSubjectFailed(error.response?.data['message'] as String?));
      } else {
        add(
          const _SubmitSubjectFailed('Something went wrong'),
        );
      }
    }
  }

  void _submitSubjectsSuccessful(
    _SubmitSubjectSuccessful event,
    Emitter<AddSubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        //come back to add the state to hasSaved
        subjectUploadStatus: FormzSubmissionStatus.success,
      ),
    );
  }

  void _submitSubjectFailed(
    _SubmitSubjectFailed event,
    Emitter<AddSubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        subjectUploadStatus: FormzSubmissionStatus.failure,
      ),
    );
    add(_ErrorMessage(event.message));
  }

  void _errorMessage(_ErrorMessage event, Emitter<AddSubjectsState> emit) {
    emit(state.copyWith(errorMessage: event.message));
  }

  ///CSV SECTION
  // void _submitSubjectCSV(
  //   _SubmitSubjectCSV event,
  //   Emitter<AddSubjectsState> emit,
  // ) async {
  //   // Prevent duplicate submissions
  //   if (state.submitSubjectCSVStatus == FormzSubmissionStatus.inProgress) {
  //     return;
  //   }

  //   emit(state.copyWith(
  //     submitSubjectCSVStatus: FormzSubmissionStatus.inProgress,
  //   ));

  //   final file = event.file;
  //   try {
  //     final hasSaved = await locator<SchoolDataUpload>().addSubjectCSV(
  //         await getAuthorization(), await getSchoolID(), File(file));

  //     emit(
  //       state.copyWith(
  //         submitSubjectCSVStatus: FormzSubmissionStatus.success,
  //         hasSaved: hasSaved, // Update hasSaved if needed
  //       ),
  //     );

  //     add(_SubmitSubjectCSVSuccessful(hasSaved));
  //   } catch (error) {
  //     emit(
  //       state.copyWith(
  //         submitSubjectCSVStatus: FormzSubmissionStatus.failure,
  //         errorMessage: error is DioError
  //             ? error.response?.data['message'] as String? ??
  //                 'An error occurred'
  //             : 'An error occurred',
  //       ),
  //     );

  //     add(_SubmitSubjectCSVFailed(state.errorMessage ?? 'An error occurred'));
  //   }
  // }

  //OTHER

  void _submitSubjectCSV(
    _SubmitSubjectCSV event,
    Emitter<AddSubjectsState> emit,
  ) async {
    if (state.submitSubjectCSVStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(
        submitSubjectCSVStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      // Convert PlatformFile to File
      final file = File(event.file.path!);

      final hasSaved = await locator<SchoolDataUpload>().addSubjectCSV(
        await getAuthorization(),
        await getSchoolID(),
        file,
      );

      emit(
        state.copyWith(
          submitSubjectCSVStatus: FormzSubmissionStatus.success,
          hasSaved: hasSaved,
        ),
      );

      add(_SubmitSubjectCSVSuccessful(hasSaved));
    } catch (error) {
      final errorMessage = error is DioError
          ? error.response?.data['message'] as String? ?? 'An error occurred'
          : 'An error occurred';

      emit(
        state.copyWith(
          submitSubjectCSVStatus: FormzSubmissionStatus.failure,
          errorMessage: errorMessage,
        ),
      );

      add(_SubmitSubjectCSVFailed(errorMessage));
    }
  }

  void _submitSubjectCSVSuccessful(
    _SubmitSubjectCSVSuccessful event,
    Emitter<AddSubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        hasSaved: event.hasSaved,
        subjectUploadStatus: FormzSubmissionStatus.success,
      ),
    );
  }

  void _submitSubjectCSVFailed(
    _SubmitSubjectCSVFailed event,
    Emitter<AddSubjectsState> emit,
  ) {
    emit(
      state.copyWith(
        subjectUploadStatus: FormzSubmissionStatus.failure,
      ),
    );
  }
}
