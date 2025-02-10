import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/wards_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/models/ward_request/ward_request_model.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_request_event.dart';
part 'send_request_state.dart';
part 'send_request_bloc.freezed.dart';

class SendRequestBloc extends Bloc<SendRequestEvent, SendRequestState> {
  SendRequestBloc() : super(const SendRequestState()) {
    on<_SendRequest>(_sendRequest);
    on<_SendRequestSuccessful>(_getRequestSuccessful);
    on<_SendRequestFailed>(_getRequestFailed);
    on<_ErrorMessage>(_errorMessage);
  }

  void _sendRequest(
    _SendRequest event,
    Emitter<SendRequestState> emit,
  ) async {
    if (state.requestAccessToWardStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(
          requestAccessToWardStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      final request = await locator<WardsClient>().sendRequest(
        await getAuthorization(),
        event.classId,
      );

      add(
        _SendRequestSuccessful(request),
      );
    } catch (error, trace) {
      logError(error, trace);
      if (error is DioError && error.response?.data['message'] != null) {
        add(_SendRequestFailed(error.response?.data['message'] as String?));
      } else {
        add(const _SendRequestFailed('Something went wrong.'));
      }
    }
  }

  void _getRequestSuccessful(
    _SendRequestSuccessful event,
    Emitter<SendRequestState> emit,
  ) {
    emit(
      state.copyWith(
        requestAccessToWardStatus: FormzSubmissionStatus.success,
        getWardRequestModel: event.getRequestModel,
      ),
    );
  }

  void _getRequestFailed(
    _SendRequestFailed event,
    Emitter<SendRequestState> emit,
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
    Emitter<SendRequestState> emit,
  ) {
    emit(
      state.copyWith(errorMessage: event.message),
    );
  }
}
