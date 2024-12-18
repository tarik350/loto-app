part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {@Default([]) List<GameCategory>? categories,
      @Default(FetchState.initial) FetchState categoryFetchState,
      @Default(null) String? categoryErrorMessage,
      @Default(null) PaginatedResponse<Game>? games,
      @Default(FetchState.initial) FetchState gameFetchState,
      @Default(null) String? gameErrorMessage,
      @Default(null) int? categoryId}) = _HomeState;
}
