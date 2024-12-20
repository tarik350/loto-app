import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket_filter_type_enum.dart';
import 'package:mobile_app/src/features/game/domain/repository/abstract_game_repo.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final AbstractGameRepo _gameRepo;
  GameBloc({required AbstractGameRepo gameRepo})
      : _gameRepo = gameRepo,
        super(const GameState()) {
    on<GameEvent>((event, emit) => _handleEvents(emit, event));
  }
  _handleEvents(Emitter<GameState> emit, GameEvent event) async {
    switch (event) {
      case FetchGameTickets(:final int gameId):
        await _handleGameTicketFetch(emit, gameId);
        break;
      case LockTicketEvent(:final ticket):
        emit(state.copyWith(
            ticketPendingForLock: ticket,
            ticketLockStatus: FormSubmissionStatus.inProgress));
        final result = await _gameRepo.aquireLockForTicket(ticket);
        result.fold(
            (failure) => emit(state.copyWith(
                errorMessage: failure.message,
                ticketLockStatus: FormSubmissionStatus.failure)), (ticket) {
          emit(state.copyWith(lockedTickets: [
            ...state.lockedTickets,
            ticket,
          ], ticketLockStatus: FormSubmissionStatus.success));
        });
        break;
      case UnloadTicketEvent(:final ticket):
        break;
      case FilterTicketEvent(:final filterType):
        break;
      case SelectRandomTicket():
        break;
      case SearchTicketEvent(:final ticketNumber):
        break;
    }
  }

  _handleGameTicketFetch(Emitter<GameState> emit, int gameId) async {
    emit(state.copyWith(ticketFetchState: FetchState.loading));
    final result = await _gameRepo.getGameTickets(gameId);
    result.fold((failure) => emit(state.copyWith()), (tickets) {
      emit(state.copyWith(
          ticketFetchState: FetchState.loaded, tickets: tickets));
    });
  }
}
