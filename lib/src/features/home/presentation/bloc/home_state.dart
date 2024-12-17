part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState() = _HomeState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.loaded(PaginatedResponse<Game> games) =
      HomeLoadedState;
  const factory HomeState.error(String message) = HomeErrorState;
}
