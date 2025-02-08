import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
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
    on<_ErrorMessage>(_errorMessage);
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
      if (error is DioError && error.response?.data['message'] != null) {
        add(_GetRequestFailed(error.response?.data['message'] as String?));
      } else {
        add(const _GetRequestFailed('Something went wrong.'));
      }
    }
  }

  void _getRequestSuccessful(
    _GetRequestSuccessful event,
    Emitter<WardMgtState> emit,
  ) {
    emit(
      state.copyWith(
        requestAccessToWardStatus: FormzSubmissionStatus.success,
        getWardRequestModel: event.getRequestModel,
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

  void _errorMessage(
    _ErrorMessage event,
    Emitter<WardMgtState> emit,
  ) {
    emit(
      state.copyWith(errorMessage: event.message),
    );
  }
}
