part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState() = _HomeState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.loaded(List<GameCategory> gameCategories) =
      HomeLoadedState;
  const factory HomeState.error(String message) = HomeErrorState;
}
