import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/api/clients/school_data_upload.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/api_response_message.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
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
    if (state.subjectUploadStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    if (!Formz.validate([state.subject, state.note])) {
      emit(
        state.copyWith(
          subject: SubjectFormz.dirty(state.subject.value),
          note: NoteFormz.dirty(state.note.value),
        ),
      );
      return;
    }

    emit(state.copyWith(subjectUploadStatus: FormzSubmissionStatus.inProgress));

    logInfo(
      await getSchoolID(),
    );

    logInfo(
        'These are the datum: ${state.selectedClass}, ${state.subject.value}, ${state.subject.value}');

    try {
      final result = await locator<SchoolDataUpload>().addSubjects(
        await getAuthorization(),
        await getSchoolID(),
        state.selectedClass,
        state.subject.value,
        state.subject.value,
      );

      add(_SubmitSubjectSuccessful(result));
    } catch (error, trace) {
      logError(error, trace);
      add(
        const _SubmitSubjectFailed('Something went wrong'),
      );
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
        //come back to add the state to hasSaved
        subjectUploadStatus: FormzSubmissionStatus.failure,
      ),
    );
    add(_ErrorMessage(event.message));
  }

  void _errorMessage(_ErrorMessage event, Emitter<AddSubjectsState> emit) {
    emit(state.copyWith(errorMessage: event.message));
  }
}
