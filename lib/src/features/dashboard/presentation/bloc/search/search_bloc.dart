import 'package:bloc/bloc.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/clients/get_school_data.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_result.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<_SearchQueryChanged>(_searchQueryChanged);
    on<_FetchResult>(_fetchResult);
    on<_FetchResultSuccessful>(_fetchResultSuccessful);
    on<_FetchResultFailed>(_fetchResultFailed);
    on<_OnSelectedResultChanged>(_onSelectedResultChanged);
    on<_CancelSearch>(_cancelSearch);
    on<_ErrorMessage>(_errorMessage);
  }

  void _searchQueryChanged(
    _SearchQueryChanged event,
    Emitter<SearchState> emit,
  ) {
    emit(
      state.copyWith(
        searchQuery: SearchFormz.pure(event.query),
        isSearchActive: event.query.isNotEmpty,
      ),
    );
    // Implement the logic for handling search query changes
  }

  void _fetchResult(_FetchResult event, Emitter<SearchState> emit) async {
    // Prevent duplicate requests if already in progress
    if (state.searchResultStatus == FormzSubmissionStatus.inProgress) {
      return;
    }

    if (state.searchQuery.value.isEmpty) {
      emit(state.copyWith(
        errorMessage: 'Please enter a search term',
        searchResultStatus: FormzSubmissionStatus.failure,
      ));
      return;
    }

    emit(state.copyWith(
      searchResultStatus: FormzSubmissionStatus.inProgress,
      errorMessage: null,
    ));

    try {
      // Fetch data from the endpoint using Retrofit
      final result = await locator<GetSchoolDataClient>().search(
        await getAuthorization(), // Your authorization token
        state.searchQuery.value, // The search query
      );

      if (result.data.isNotEmpty) {
        add(
          _FetchResultSuccessful(
            result,
          ),
        );
      } else {
        add(
          const _FetchResultFailed(
            'No results found',
          ),
        );
      }
    } catch (error, trace) {
      // Handle errors
      logError(error, trace);
      add(_FetchResultFailed(error.toString()));
    }
  }

  void _fetchResultSuccessful(
    _FetchResultSuccessful event,
    Emitter<SearchState> emit,
  ) {
    emit(
      state.copyWith(
        searchResultStatus: FormzSubmissionStatus.success,
        errorMessage: null,
        searchResponse: event.searchResponse,
      ),
    );
  }

  void _fetchResultFailed(_FetchResultFailed event, Emitter<SearchState> emit) {
    emit(
      state.copyWith(
          searchResultStatus: FormzSubmissionStatus.failure,
          errorMessage: event.message),
    );
  }

  void _onSelectedResultChanged(
    _OnSelectedResultChanged event,
    Emitter<SearchState> emit,
  ) {
    emit(state.copyWith(selectedResult: event.selectedResult));
  }

  void _cancelSearch(_CancelSearch event, Emitter<SearchState> emit) {
    emit(
      state.copyWith(
        isSearchActive: false,
        searchQuery: const SearchFormz.pure(),
        searchResultStatus: FormzSubmissionStatus.initial,
        searchResponse: null,
        selectedResult: null,
        errorMessage: null,
      ),
    );
  }

  void _errorMessage(_ErrorMessage event, Emitter<SearchState> emit) {
    emit(
      state.copyWith(
        errorMessage: event.message,
      ),
    );
  }
}
