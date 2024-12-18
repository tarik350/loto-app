import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/features/home/domain/repositories/abstract_home_repository.dart';
import 'package:mobile_app/src/shared/models/paginated_response/paginated_response.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AbstractHomeRepository homeRepository;
  HomeBloc(this.homeRepository) : super(const HomeState()) {
    on<HomeEvent>((event, emit) => _handleEvent(event, emit));
  }

  Future<void> _handleEvent(HomeEvent event, Emitter<HomeState> emit) async {
    switch (event) {
      case GetAllCashGamesEvent(:final int? categoryId):
        await _handleGetAllGamesWithCategory(emit, categoryId);
      case GetAllGameCategoriesEvent():
        await _handleGetAllCategories(emit);
      case UpdateCategoryId(:final int? categoryId):
        if (state.categoryId == categoryId) {
          emit(state.copyWith(categoryId: null));
        } else {
          emit(state.copyWith(categoryId: categoryId));
        }
    }
  }

  Future<void> _handleGetAllGamesWithCategory(
      Emitter<HomeState> emit, int? categoryId) async {
    emit(state.copyWith(gameFetchState: FetchState.loading));
    final result = await homeRepository.getAllCashGames(categoryId: categoryId);
    result.fold((failure) {
      if (failure is ValidationFailure) {
        emit(state.copyWith(
            gameErrorMessage: failure.message,
            gameFetchState: FetchState.error));
      }
      emit(state.copyWith(
          gameErrorMessage: failure.message, gameFetchState: FetchState.error));
    }, (PaginatedResponse<Game> games) {
      emit(state.copyWith(games: games, gameFetchState: FetchState.loaded));
    });
  }

  _handleGetAllCategories(Emitter<HomeState> emit) async {
    emit(state.copyWith(categoryFetchState: FetchState.loading));
    final result = await homeRepository.getAllGameCateories();
    result.fold((failure) {
      emit(state.copyWith(
          categoryErrorMessage: failure.message,
          categoryFetchState: FetchState.error));
    }, (categories) {
      emit(state.copyWith(
          categories: categories, categoryFetchState: FetchState.loaded));
    });
  }
}
