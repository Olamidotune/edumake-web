part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    SearchResponse? searchResponse,
    @Default([]) List<SearchResult>? searchResult,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus searchResultStatus,
    @Default(false) bool isSearchActive,
    @Default(SearchFormz.pure()) SearchFormz searchQuery,
    String? selectedResult,
    String? errorMessage,
  }) = _SearchState;

  const SearchState._();
}

class SearchFormz extends FormzInput<String, ValidationError> {
  const SearchFormz.pure([String value = '']) : super.pure(value);
  const SearchFormz.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.isEmpty || int.tryParse(value) == null) {
      return ValidationError.empty;
    }

    if (value.length < 6) {
      return ValidationError.short;
    }

    return null;
  }
}
