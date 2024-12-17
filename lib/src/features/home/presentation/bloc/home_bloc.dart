import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
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
      case GetAllCashGamesEvent():
        await _handleGetAllGamesWithCategory(emit);
    }
  }

  Future<void> _handleGetAllGamesWithCategory(Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    final result = await homeRepository.getAllCashGames();
    result.fold((AppFailure l) {
      if (l is ValidationFailure) {
        emit(HomeState.error(l.validationErrors.toString()));
      }
      emit(HomeState.error(l.message));
    }, (PaginatedResponse<Game> games) {
      log(games.toString());
      emit(HomeState.loaded(games));
    });
  }
}
