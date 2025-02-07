part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent() = _SearchEvent;
  const factory SearchEvent.onSearchQueryChanged(String query) =
      _SearchQueryChanged;
  const factory SearchEvent.fetchResult() = _FetchResult;
  const factory SearchEvent.fetchResultSuccessful(
    SearchResponse searchResponse,
    // List<SearchResult> searchResult,
  ) = _FetchResultSuccessful;
  const factory SearchEvent.onSelectedResultChanged(
    String? selectedResult,
  ) = _OnSelectedResultChanged;
  const factory SearchEvent.fetchResultFailed(String? message) =
      _FetchResultFailed;
  const factory SearchEvent.errorMessage(String? message) = _ErrorMessage;
}
