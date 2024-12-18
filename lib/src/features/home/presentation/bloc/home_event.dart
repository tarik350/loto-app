part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllCashGames({int? categoryId}) =
      GetAllCashGamesEvent;
  const factory HomeEvent.updateCategoryId({int? categoryId}) =
      UpdateCategoryId;
  const factory HomeEvent.getAllGameCateories() = GetAllGameCategoriesEvent;
}
