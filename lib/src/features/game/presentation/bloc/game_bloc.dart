import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/login/data/data_source/local/abstract_local_login_api.dart';
import 'package:mobile_app/src/features/auth/login/domain/repository/abstract_login_repo.dart';
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
      case FetchGameTickets():
        await _handleGameTicketFetch(emit);
        break;
      case LockTicketEvent(:final ticket):
        await _handleTicketLock(emit, ticket);
        break;
      case ResetGameState():
        emit(state.copyWith(
          tickets: [],
          lockedTickets: [],
        ));
      case UpdateGameId(:final gameId):
        emit(state.copyWith(gameId: gameId));
        break;
      case FetchAllLockedUserTickets():
        _fetchAllLockedTicketsForUser(emit);
        break;
      case UnlockTicketEvent(:final ticket):
        await _handleTicketUnlock(emit, ticket);
        break;
      // case FilterTicketEvent(:final filterType):
      //   break;
      case SelectRandomTicket():
        _handleSelectRandomTicket(emit);
        break;
      // case SearchTicketEvent(:final ticketNumber):
      //   break;
    }
  }

  _handleGameTicketFetch(Emitter<GameState> emit) async {
    if (state.gameId == null) {
      return;
    }
    emit(state.copyWith(ticketFetchState: FetchState.loading));
    final result = await _gameRepo.getGameTickets(state.gameId!);
    result.fold((failure) => emit(state.copyWith()), (tickets) {
      final List<Ticket> allUserLockedTickets =
          sl<AbstractLocalLoginApi>().isUserAuthenticated()
              ? tickets
                  .where((element) =>
                      element.userId ==
                      sl<AbstractLocalLoginApi>().getUserModel()?.id)
                  .toList()
              : [];
      emit(state.copyWith(
          ticketFetchState: FetchState.loaded,
          tickets: tickets,
          lockedTickets: allUserLockedTickets));
    });
  }

  _handleTicketLock(Emitter<GameState> emit, Ticket ticket) async {
    emit(state.copyWith(
        ticketLockState: state.ticketLockState.copyWith(
            ticket: ticket,
            formSubmissionStatus: FormSubmissionStatus.inProgress)));
    final result = await _gameRepo.aquireLockForTicket(ticket);
    result.fold(
        (failure) => emit(state.copyWith(
            errorMessage: failure.message,
            ticketLockState: state.ticketLockState
                .copyWith(formSubmissionStatus: FormSubmissionStatus.failure))),
        (ticket) {
      emit(state.copyWith(
          lockedTickets: [
            ...state.lockedTickets,
            ticket,
          ],
          ticketLockState: state.ticketLockState
              .copyWith(formSubmissionStatus: FormSubmissionStatus.success)));
    });
  }

  _handleTicketUnlock(Emitter<GameState> emit, Ticket ticket) async {
    emit(state.copyWith(
        ticketUnlockState: state.ticketUnlockState.copyWith(
            formSubmissionStatus: FormSubmissionStatus.inProgress,
            ticket: ticket)));
    final result = await _gameRepo.releaseLockForTicket(ticket);
    result.fold(
        (failure) => emit(state.copyWith(
            ticketUnlockState: state.ticketUnlockState
                .copyWith(formSubmissionStatus: FormSubmissionStatus.failure),
            errorMessage: failure.message)),
        (ticket) => emit(state.copyWith(
              ticketUnlockState: state.ticketUnlockState
                  .copyWith(formSubmissionStatus: FormSubmissionStatus.success),
              lockedTickets: state.lockedTickets
                  .where((t) => t.ticketNumber != ticket.ticketNumber)
                  .toList(),
            )));
  }

  void _fetchAllLockedTicketsForUser(Emitter<GameState> emit) async {
    final result = await _gameRepo.getAllLockedTicket();
    result.fold((failure) => emit(state.copyWith()),
        (tickets) => emit(state.copyWith(lockedTickets: tickets)));
  }

  void _handleSelectRandomTicket(Emitter<GameState> emit) {}
}
