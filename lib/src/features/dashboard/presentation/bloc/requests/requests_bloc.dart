import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/wards_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_datum.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/request/get_request_model.dart';
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
    on<_AcceptRequest>(_acceptRequest);
    on<_AcceptRequestSuccessful>(_acceptRequestSuccessful);
    on<_AcceptRequestFailed>(_acceptRequestFailed);
    on<_RejectRequest>(_rejectRequest);
    on<_RejectRequestSuccessful>(_rejectRequestSuccessful);
    on<_RejectRequestFailed>(_rejectRequestFailed);
    on<_RequestStatusChanged>(_onRequestStatusChanged);

    on<_ErrorMessage>(_errorMessage);
  }

  //Add a refresh function in bloc to refresh all pending request across board
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

      add(
        _GetRequestSuccessful(
          requests,
        ),
      );
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
        getRequestDatum: event.getRequestModel.data,
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

  void _acceptRequest(
    _AcceptRequest event,
    Emitter<RequestsState> emit,
  ) async {
    if (state.acceptRequestStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(acceptRequestStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      final acceptRequest = await locator<WardsClient>().approveRejectRequest(
        await getAuthorization(),
        event.selectedRequestId,
        'approve',
        '',
      );

      add(_AcceptRequestSuccessful(acceptRequest));
    } catch (error, trace) {
      onError(error, trace);
      add(
        _AcceptRequestFailed(
          error.toString(),
        ),
      );
    }

    emit(state.copyWith(selectedRequestId: event.selectedRequestId));
    log(event.selectedRequestId);
  }

  void _acceptRequestSuccessful(
    _AcceptRequestSuccessful event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        acceptRequestStatus: FormzSubmissionStatus.success,
        errorMessage: null,
      ),
    );
  }

  void _acceptRequestFailed(
    _AcceptRequestFailed event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        acceptRequestStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _rejectRequest(
    _RejectRequest event,
    Emitter<RequestsState> emit,
  ) async {
    if (state.rejectRequestStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(
      state.copyWith(selectedRequestId: event.selectedRequestId),
    );

    emit(
      state.copyWith(acceptRequestStatus: FormzSubmissionStatus.inProgress),
    );

    try {
      final acceptRequest = await locator<WardsClient>().approveRejectRequest(
        await getAuthorization(),
        event.selectedRequestId,
        'reject',
        event.rejectionReason,
      );

      add(_AcceptRequestSuccessful(acceptRequest));
    } catch (error, trace) {
      onError(error, trace);
      add(
        _RejectRequestFailed(
          error.toString(),
        ),
      );
    }
  }

  void _rejectRequestSuccessful(
    _RejectRequestSuccessful event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        rejectRequestStatus: FormzSubmissionStatus.success,
        errorMessage: null,
      ),
    );
  }

  void _rejectRequestFailed(
    _RejectRequestFailed event,
    Emitter<RequestsState> emit,
  ) {
    emit(
      state.copyWith(
        rejectRequestStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  Future<void> _onRequestStatusChanged(
    _RequestStatusChanged event,
    Emitter<RequestsState> emit,
  ) async {
    try {
      if (state.getRequestModel != null) {
        final currentRequests = state.getRequestModel!.data;
        final updatedRequests = currentRequests
            .where((request) => request.id != event.requestId)
            .toList();

        final updatedModel = state.getRequestModel!.copyWith(
          data: updatedRequests,
        );

        emit(state.copyWith(
          getRequestModel: updatedModel,
        ));
      }
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: 'Failed to update request status',
        ),
      );
    }
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
