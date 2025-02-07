import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/wards_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/request/get_request_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/request/get_request_model.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'requests_event.dart';
part 'requests_state.dart';
part 'requests_bloc.freezed.dart';

class RequestsBloc extends Bloc<RequestsEvent, RequestsState> {
  RequestsBloc() : super(const RequestsState()) {
    on<_GetRequest>(_getRequest);
    on<_GetRequestSuccessful>(_getRequestSuccessful);
    on<_GetRequestFailed>(_getRequestFailed);
    on<_SelectedRequest>(_selectedRequest);
    on<_SelectedRequestId>(_selectedRequestId);
    on<_ErrorMessage>(_errorMessage);
  }

  void _getRequest(
    _GetRequest event,
    Emitter<RequestsState> emit,
  ) async {
    if (state.getRequestStatus == FormzSubmissionStatus.inProgress) return;

    emit(
      state.copyWith(
        getRequestStatus: FormzSubmissionStatus.inProgress,
      ),
    );

    try {
      final requests = await locator<WardsClient>()
          .getAllRequests(await getAuthorization(), await getSchoolID());

      print('API Response: ${requests.data.length}'); // Log the response

      add(_GetRequestSuccessful(requests));
    } catch (error, trace) {
      onError(error, trace);
      add(
        _GetRequestFailed(
          error.toString(),
        ),
      );
    }
  }

  void _getRequestSuccessful(
    _GetRequestSuccessful event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        getRequestModel: event.getRequestModel,
        getRequestStatus: FormzSubmissionStatus.success,
        errorMessage: null,
      ),
    );
  }

  void _getRequestFailed(
    _GetRequestFailed event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        getRequestStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _selectedRequestId(
    _SelectedRequestId event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        selectedRequest: event.selectedRequestId,
      ),
    );
  }

  void _selectedRequest(
    _SelectedRequest event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        selectedRequest: event.selectedRequest,
      ),
    );
  }

  void _errorMessage(
    _ErrorMessage event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        errorMessage: event.message,
      ),
    );
  }
}
