import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/dashboard/api/parents/clients/wards_client.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_response.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_wards_event.dart';
part 'get_wards_state.dart';
part 'get_wards_bloc.freezed.dart';

class GetWardsBloc extends Bloc<GetWardsEvent, GetWardsState> {
  GetWardsBloc() : super(const GetWardsState()) {
    on<_Init>(_init);
    on<_FetchWards>(_fetchWards);
    on<_FetchWardsSuccessful>(_fetchWardsSuccessful);
    on<_FetchWardsFailed>(_fetchWardsFailed);
    on<_SelectedWard>(_selectedWard);
    on<_ErrorMessage>(_errorMessage);

    add(const _Init());
  }

  void _init(_Init event, Emitter<GetWardsState> emit) {
    add(const _FetchWards());
  }

  void _fetchWards(_FetchWards event, Emitter<GetWardsState> emit) async {
    if (state.getWardStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    emit(state.copyWith(getWardStatus: FormzSubmissionStatus.inProgress));

    try {
      final wards = await locator<WardsClient>().getWardsForParent(
        await getAuthorization(),
      );

      add(_FetchWardsSuccessful(wards));
    } catch (error, trace) {
      logError(error, trace);
      add(
        _FetchWardsFailed(
          error.toString(),
        ),
      );
    }
  }

  void _fetchWardsSuccessful(
    _FetchWardsSuccessful event,
    Emitter<GetWardsState> emit,
  ) async {
    emit(
      state.copyWith(
        getWardStatus: FormzSubmissionStatus.success,
        searchResponse: event.searchResponse,
        errorMessage: null,
      ),
    );
  }

  void _fetchWardsFailed(
    _FetchWardsFailed event,
    Emitter<GetWardsState> emit,
  ) {
    emit(
      state.copyWith(
        getWardStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<GetWardsState> emit) {
    emit(
      state.copyWith(
        getWardStatus: FormzSubmissionStatus.failure,
        errorMessage: event.message,
      ),
    );
  }

  void _selectedWard(_SelectedWard event, Emitter<GetWardsState> emit) {
    emit(
      state.copyWith(selectedWard: event.selectedWard),
    );
  }
}
