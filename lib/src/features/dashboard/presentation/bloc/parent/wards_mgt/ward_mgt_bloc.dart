import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/wards_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/ward_request/ward_request_model.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ward_mgt_event.dart';
part 'ward_mgt_state.dart';
part 'ward_mgt_bloc.freezed.dart';

class WardMgtBloc extends Bloc<WardMgtEvent, WardMgtState> {
  WardMgtBloc() : super(const WardMgtState()) {
    on<_GetRequest>(_getRequest);
    on<_GetRequestSuccessful>(_getRequestSuccessful);
    on<_GetRequestFailed>(_getRequestFailed);
  }

  void _getRequest(
    _GetRequest event,
    Emitter<WardMgtState> emit,
  ) async {
    if (state.requestAccessToWardStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(
          requestAccessToWardStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      final request = await locator<WardsClient>().requestAccessToWard(
        await getAuthorization(),
        event.classId,
      );

      add(
        _GetRequestSuccessful(request),
      );
    } catch (error, trace) {
      logError(error, trace);
      add(_GetRequestFailed(error.toString()));
    }
  }

  void _getRequestSuccessful(
    _GetRequestSuccessful event,
    Emitter<WardMgtState> emit,
  ) {
    emit(
      state.copyWith(
        requestAccessToWardStatus: FormzSubmissionStatus.success,
      ),
    );
  }

  void _getRequestFailed(
    _GetRequestFailed event,
    Emitter<WardMgtState> emit,
  ) {
    emit(
      state.copyWith(
        requestAccessToWardStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }
}
